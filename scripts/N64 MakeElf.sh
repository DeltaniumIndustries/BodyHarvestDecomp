#!/bin/bash
set -e

# Check for input file
if [ -z "$1" ]; then
    echo "Usage: $0 <path-to-.z64-file>"
    exit 1
fi

# Set the basename from the input file without extension
INPUT_FILE="$1"
BASENAME="$(basename "$INPUT_FILE" .z64)"

# Define directories
BUILD_DIR=build
ASM_DIR=asm
BIN_DIR=assets
SRC_DIR=src
TOOLS_DIR=tools

# Define toolchain
CROSS=mips-linux-gnu-
AS="${CROSS}as"
LD="${CROSS}ld"
OBJCOPY="${CROSS}objcopy"
PYTHON=python3

# Flags
OBJCOPYFLAGS="-O binary"
LDFLAGS="-T ${BASENAME}.ld -Map ${BUILD_DIR}/${BASENAME}.map -T undefined_syms_auto.txt -T undefined_funcs_auto.txt --no-check-sections"
CC="${TOOLS_DIR}/ido_recomp/linux/5.3/cc"
OPT_FLAGS="-O2"
MIPSISET="-mips1 -o32"
INCLUDE_CFLAGS="-I . -I include"
ASFLAGS="-EB -mtune=vr4300 -march=vr4300 -mabi=32 -I include"
CFLAGS="${INCLUDE_CFLAGS}"

# Ensure required macro.inc files
for path in "${ASM_DIR}/macro.inc" "${ASM_DIR}/data/macro.inc"; do
    if [ ! -f "$path" ]; then
        echo "Missing required: $path"
        exit 1
    fi
done

convert_bin_to_o() {
    mapfile -t bin_files < <(find "${BIN_DIR}" -name "*.bin")
    for bin_file in "${bin_files[@]}"; do
        out_file="${BUILD_DIR}/${bin_file%.*}.o"
        mkdir -p "$(dirname "$out_file")"
        ${LD} -r -b binary -o "$out_file" "$bin_file"
    done
}

assemble_s_files() {
    mapfile -t asm_files < <(find "${ASM_DIR}" -name "*.s")
    for asm_file in "${asm_files[@]}"; do
        out_file="${BUILD_DIR}/${asm_file%.*}.o"
        mkdir -p "$(dirname "$out_file")"
        ${AS} ${ASFLAGS} -o "$out_file" "$asm_file"
    done
}

compile_c_files() {
    if [ -d "${SRC_DIR}" ]; then
        mapfile -t c_files < <(find "${SRC_DIR}" -name "*.c")
        for c_file in "${c_files[@]}"; do
            out_file="${BUILD_DIR}/${c_file%.*}.o"
            mkdir -p "$(dirname "$out_file")"
            ${CC} -c ${CFLAGS} ${OPT_FLAGS} ${MIPSISET} -o "$out_file" "$c_file"
        done
    fi
}

clean_build() {
    rm -rf "${BUILD_DIR}"
}

main() {
    clean_build
    mkdir -p "${BUILD_DIR}/${ASM_DIR}" "${BUILD_DIR}/${BIN_DIR}"

    convert_bin_to_o
    assemble_s_files
    compile_c_files

    elf_file="${BUILD_DIR}/${BASENAME}.elf"
    bin_file="${BUILD_DIR}/${BASENAME}.bin"
    z64_file="${BUILD_DIR}/${BASENAME}.z64"

    ${LD} ${LDFLAGS} -o "$elf_file" $(find "${BUILD_DIR}" -name "*.o")
    ${OBJCOPY} ${OBJCOPYFLAGS} "$elf_file" "$bin_file"
    cp "$bin_file" "$z64_file"

    echo "✅ Build completed: $z64_file"
}

main

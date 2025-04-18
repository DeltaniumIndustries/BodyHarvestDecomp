#!/bin/bash

# Set the basename from the input file without the extension
BASENAME=$(basename "$1" .z64)

# Define directories
BUILD_DIR=build
ASM_DIR=asm
BIN_DIR=assets
SRC_DIR=src
TOOLS_DIR=tools

# Define toolchain
CROSS=mips-linux-gnu-
AS=${CROSS}as
LD=${CROSS}ld
OBJCOPY=${CROSS}objcopy
PYTHON=python3

# Define flags
OBJCOPYFLAGS="-O binary"
LDFLAGS="-T ${BASENAME}.ld -Map ${BUILD_DIR}/${BASENAME}.map -T undefined_syms_auto.txt -T undefined_funcs_auto.txt --no-check-sections"

# Define compiler and assembler flags
CC=${TOOLS_DIR}/ido_recomp/linux/5.3/cc
OPT_FLAGS="-O2"
MIPSISET="-mips1 -o32"
INCLUDE_CFLAGS="-I . -I include"
ASFLAGS="-EB -mtune=vr4300 -march=vr4300 -mabi=32 -I include"

# Ensure the macro.inc file exists in the asm directory
if [ ! -f $ASM_DIR/macro.inc ]; then
    echo "macro.inc not found in $ASM_DIR!"
    exit 1
fi

# Ensure the macro.inc file exists in the asm/data directory
if [ ! -f $ASM_DIR/data/macro.inc ]; then
    echo "macro.inc not found in $ASM_DIR/data!"
    exit 1
fi

# Function to convert .bin to .o
convert_bin_to_o() {
    for bin_file in $(find ${BIN_DIR} -name "*.bin"); do
        bin_base=$(basename ${bin_file} .bin)
        mkdir -p $(dirname ${BUILD_DIR}/${bin_file})
        ${LD} -r -b binary -o ${BUILD_DIR}/${bin_file%.*}.o ${bin_file}
        if [ $? -ne 0 ]; then
            echo "Error: objcopy failed for ${bin_file}"
            exit 1
        fi
    done
}

# Function to assemble .s files to .o files
assemble_s_files() {
    for asm_file in $(find ${ASM_DIR} -name "*.s"); do
        asm_base=$(basename ${asm_file} .s)
        mkdir -p $(dirname ${BUILD_DIR}/${asm_file})
        ${AS} ${ASFLAGS} -o ${BUILD_DIR}/${asm_file%.*}.o ${asm_file}
        if [ $? -ne 0 ]; then
            echo "Error: assembler failed for ${asm_file}"
            exit 1
        fi
    done
}

# Function to compile .c files to .o files, if src directory exists
compile_c_files() {
    if [ -d ${SRC_DIR} ]; then
        for c_file in $(find ${SRC_DIR} -name "*.c"); do
            c_base=$(basename ${c_file} .c)
            mkdir -p $(dirname ${BUILD_DIR}/${c_file})
            ${CC} -c ${CFLAGS} ${OPT_FLAGS} ${MIPSISET} -o ${BUILD_DIR}/${c_file%.*}.o ${c_file}
            if [ $? -ne 0 ]; then
                echo "Error: compiler failed for ${c_file}"
                exit 1
            fi
        done
    fi
}

# Clean the build directory
clean_build() {
    rm -rf ${BUILD_DIR}
}

# Main function
main() {
    # Clean previous build
    clean_build

    # Create necessary directories
    mkdir -p ${BUILD_DIR}/${ASM_DIR} ${BUILD_DIR}/${BIN_DIR}

    # Convert .bin to .o
    convert_bin_to_o

    # Assemble .s files to .o files
    assemble_s_files

    # Compile .c files to .o files
    compile_c_files

    # Link all .o files to create the ELF file
    ${LD} ${LDFLAGS} -o ${BUILD_DIR}/${BASENAME}.elf $(find ${BUILD_DIR} -name "*.o")

    if [ ! -f ${BUILD_DIR}/${BASENAME}.elf ]; then
        echo "Error: ELF file not created"
        exit 1
    fi

    # Convert the ELF file to binary
    ${OBJCOPY} ${OBJCOPYFLAGS} ${BUILD_DIR}/${BASENAME}.elf ${BUILD_DIR}/${BASENAME}.bin

    if [ ! -f ${BUILD_DIR}/${BASENAME}.bin ]; then
        echo "Error: Binary file not created"
        exit 1
    fi

    # Copy the binary file to .z64
    cp ${BUILD_DIR}/${BASENAME}.bin ${BUILD_DIR}/${BASENAME}.z64

    echo "Build completed: ${BUILD_DIR}/${BASENAME}.z64"
}

# Check if the input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <path-to-.z64-file>"
    exit 1
fi

# Run the main function
main "$1"

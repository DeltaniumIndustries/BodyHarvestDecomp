#!/bin/bash
set -euo pipefail
trap 'echo "❌ Error on line $LINENO"; exit 1' ERR

INPUT_ROM_ORIG="${1:-test.z64}"
OUTPUT_ELF="${2:-output.elf}"
TMP_ROM=$(mktemp)
ENTRY_TMP=$(mktemp)
ASM_OUT="${OUTPUT_ELF%.elf}.asm"
LD_SCRIPT="${OUTPUT_ELF%.elf}.ld"

echo "📦 Installing required packages..."
sudo apt update
sudo apt install -y binutils-mips-linux-gnu binutils-multiarch coreutils

for cmd in mips-elf-objcopy mips-elf-objdump dd xxd file; do
  command -v $cmd >/dev/null || { echo "❌ '$cmd' is required but not found"; exit 1; }
done

if [[ ! -f "$INPUT_ROM_ORIG" ]]; then
  echo "❌ ROM file '$INPUT_ROM_ORIG' not found"
  exit 1
fi

echo "🔍 Analyzing ROM: $INPUT_ROM_ORIG"

# Read first 4 bytes for header type
HEADER=$(xxd -p -c 4 "$INPUT_ROM_ORIG" | head -n1)
ROM_TYPE="unknown"
case "$HEADER" in
  80371240)
    ROM_TYPE="z64"
    echo "🧠 Detected big-endian (z64) ROM"
    cp "$INPUT_ROM_ORIG" "$TMP_ROM"
    ;;
  37804012)
    ROM_TYPE="v64"
    echo "🧠 Detected byteswapped (v64) ROM — converting to z64..."
    dd if="$INPUT_ROM_ORIG" of="$TMP_ROM" conv=swab status=none
    ;;
  40123780)
    ROM_TYPE="n64"
    echo "🧠 Detected little-endian (n64) ROM — converting to z64..."
    dd if="$INPUT_ROM_ORIG" of="$TMP_ROM" conv=swab status=none
    ;;
  *)
    echo "❌ Unknown ROM header: $HEADER"
    exit 1
    ;;
esac

# Extract entry point (bytes 8–11)
dd if="$TMP_ROM" bs=1 skip=8 count=4 of="$ENTRY_TMP" status=none
ENTRY_HEX=$(xxd -p "$ENTRY_TMP" | tr -d '\n')
echo "🚪 Entry point (raw): 0x$ENTRY_HEX"

# Extract code/data boundaries
echo "📊 Analyzing ROM for code/data boundaries..."
CODE_START=$(xxd -p -c 4 "$TMP_ROM" | head -n1)
CODE_END=$(xxd -p -c 4 "$TMP_ROM" | tail -n1)

echo "🧩 Code section starts at: 0x$CODE_START"
echo "🧩 Code section ends at: 0x$CODE_END"

echo "⚙️  Converting to ELF..."
mips-elf-objcopy -I binary "$TMP_ROM" -O elf32-bigmips -B mips \
  --adjust-section-vma .data+0x80000000 "$OUTPUT_ELF"

echo "🔧 Patching ELF to use MIPS III ISA..."
printf '\x20\x00\x00\x00' | dd bs=1 seek=36 count=4 conv=notrunc of="$OUTPUT_ELF" status=none

echo "📌 Setting ELF entry point..."
dd if="$ENTRY_TMP" bs=1 seek=24 count=4 conv=notrunc of="$OUTPUT_ELF" status=none

echo "🧹 Cleaning up..."
rm -f "$TMP_ROM" "$ENTRY_TMP"

echo "✅ ELF written to $OUTPUT_ELF"

echo "📄 Dumping ELF headers:"
mips-elf-objdump -x "$OUTPUT_ELF"

echo "🧩 Generating disassembly to $ASM_OUT..."
mips-elf-objdump -D "$OUTPUT_ELF" > "$ASM_OUT"

# Generating basic linker script based on detected boundaries
echo "📜 Generating basic linker script: $LD_SCRIPT"
cat <<EOL > "$LD_SCRIPT"
ENTRY(0x$ENTRY_HEX)

SECTIONS {
  .text 0x$CODE_START : {
    *(.text)
  }

  .data 0x$CODE_END : {
    *(.data)
  }

  .bss 0x$((0x$CODE_END + 0x1000)) : {
    *(.bss)
  }
}
EOL

echo "🎉 Done!"

#!/usr/bin/bash

# Get entry point from N64 ROM
dd if=test.z64 bs=1 skip=8 count=4 of=entrypoint >& /dev/null
# Convert entrypoint to little endian
#mips-elf-objcopy -I binary -O binary --reverse-bytes=4 entrypoint entrypoint
# Construct an ELF
mips-elf-objcopy -I binary test.z64 -O elf32-bigmips -B mips --adjust-section-vma .data+0x80000000 foo.elf
# Patch to MIPS III
printf '\x20\x00\x00\x00' | dd bs=1 seek=36 count=4 conv=notrunc of=foo.elf >& /dev/null
# Set entrypoint
dd if=entrypoint bs=1 seek=24 count=4 conv=notrunc of=foo.elf >& /dev/null
rm entrypoint

# Dump the headers
mips-elf-objdump -x foo.elf
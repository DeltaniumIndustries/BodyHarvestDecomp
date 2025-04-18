# Body Harvest Decompilation Project (US Version)

This is a work-in-progress decompilation of Body Harvest for the Nintendo 64, targeting the US ROM.

The goal of this project is to reverse engineer the game back into (as close as possible to) its original C source code. This enables better understanding of the game’s inner workings, easier modding, documentation of its engine and systems, and potential for portability and restoration.

## Project Status

🎯 Target ROM: US Version (NTSC-U)

🔍 Current focus: Starting~

🧩 Progress: None



## Getting Started

To build the project, you’ll need:

- A copy of the Body Harvest (USA) ROM

- A working toolchain for MIPS target builds (e.g., mips64-elf or mips-linux-gnu)

- Python 3.x (for build scripts and tools)

- git, make, and other standard UNIX tools

## Setup

### ROM Extraction
Place your legally obtained ROM in the baserom/ directory and name it:

```
baserom.us.z64
```

Make sure the file is unmodified and has the correct checksum.

## Build the Decompilation

```
make
```

This will produce a build/bodyharvest.us.z64 which should match the original ROM (as decompilation progress allows).

### Compare Output

Use tools like n64split, sha1sum, or diff to compare builds and track matching progress.

## Directory Structure

/asm/           - Hand-written or extracted assembly files
/src/           - Decompiled C source code
/include/       - Header files and struct definitions
/assets/        - Game data (textures, audio, maps)
/tools/         - Scripts and utilities for analysis and extraction

## Goals

Match code 1:1 with original ROM (eventually becoming a clean, byte-matching rebuild)

Document internal systems (AI, rendering, sound, etc.)

Enable modding and engine experimentation

Preserve and study DMA/N64-specific quirks

## Legal Notice

This project is for educational and preservation purposes only. You must provide your own copy of the Body Harvest ROM. No copyrighted assets or ROMs are included.

## Contributing

PRs, documentation, and disassemblies welcome! If you're interested in helping, feel free to open issues or reach out.

Let me know if you'd like this to include build instructions specific to your toolchain or dev setup (like WSL2, etc).
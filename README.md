nasm boot_sect.asm -f bin -o boot_sect.bin

lb 0x7c00

od -t x1 -A n boot_sect.bin
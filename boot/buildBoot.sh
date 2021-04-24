nasm boot.asm -o build/boot.bin
dd if=build/boot.bin of=../bochs/boot.img bs=512 count=1 conv=notrunc

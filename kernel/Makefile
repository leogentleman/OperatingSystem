all: system
	/usr/local/Cellar/x86_64-elf-binutils/2.36.1/bin/x86_64-elf-objcopy -I elf64-x86-64 -S -R ".eh_frame" -R ".comment" -O binary system kernel.bin

system:	head.o main.o 
	/usr/local/Cellar/x86_64-elf-binutils/2.36.1/bin/x86_64-elf-ld -b elf64-x86-64 -o system head.o main.o -T Kernel.lds 

main.o:	main.c
	 /usr/local/Cellar/x86_64-elf-gcc/10.3.0/bin/x86_64-elf-gcc  -mcmodel=large -fno-builtin -m64 -c main.c

head.o:	head.S
	 /usr/local/Cellar/x86_64-elf-gcc/10.3.0/bin/x86_64-elf-gcc -E  head.S > head1.s
	/usr/local/Cellar/x86_64-elf-binutils/2.36.1/bin/x86_64-elf-as --64 -o head.o head1.s

clean:
	rm -rf *.o *.s~ *.s *.S~ *.c~ *.h~ system  Makefile~ Kernel.lds~ kernel.bin 


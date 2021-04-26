#/***************************************************
#		版权声明
#
#	本操作系统名为：MINE
#	该操作系统未经授权不得以盈利或非盈利为目的进行开发，
#	只允许个人学习以及公开交流使用
#
#	代码最终所有权及解释权归田宇所有；
#
#	本模块作者：	田宇
#	EMail:		345538255@qq.com
#
#
#***************************************************/

all: system
	/usr/local/Cellar/x86_64-elf-binutils/2.36.1/bin/x86_64-elf-objcopy -I elf64-x86-64 -S -R ".eh_frame" -R ".comment" -O binary system kernel.bin

system:	head.o main.o printk.o
	/usr/local/Cellar/x86_64-elf-binutils/2.36.1/bin/x86_64-elf-ld -b elf64-x86-64 -z muldefs -o system head.o main.o printk.o -T Kernel.lds 

head.o:	head.S
	/usr/local/Cellar/x86_64-elf-gcc/10.3.0/bin/x86_64-elf-gcc -E  head.S > head1.s
	/usr/local/Cellar/x86_64-elf-binutils/2.36.1/bin/x86_64-elf-as --64 -o head.o head1.s
	
main.o:	main.c
	/usr/local/Cellar/x86_64-elf-gcc/10.3.0/bin/x86_64-elf-gcc  -mcmodel=large -fno-builtin -m64 -c main.c
	
printk.o: printk.c
	/usr/local/Cellar/x86_64-elf-gcc/10.3.0/bin/x86_64-elf-gcc   -mcmodel=large -fno-builtin -m64 -O -c printk.c

clean:
	rm -rf *.o *.s~ *.s *.S~ *.c~ *.h~ system  Makefile~ Kernel.lds~ kernel.bin 


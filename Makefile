ckernel: kernel_u.asm
	echo "compile successful..."

kernel_u.asm: ckernel.o
	objconv -fnasm ./bin/ckernel.o -o ./bin/ckernel_u.asm

ckernel.o: write_vga_desktop.o win_sheet.o mem_util.o
	ld -m elf_i386 -r ./bin/write_vga_desktop.o ./bin/mem_util.o ./bin/win_sheet.o -o ./bin/ckernel.o	

write_vga_desktop.o : write_vga_desktop.c win_sheet.c win_sheet.h mem_util.c \
	mem_util.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/write_vga_desktop.o \
		write_vga_desktop.c

win_sheet.o: win_sheet.c win_sheet.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/win_sheet.o \
		win_sheet.c

mem_util.o: mem_util.c mem_util.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/mem_util.o \
		mem_util.c

.PHONY:clean
clean:
	rm -rf ./*.o

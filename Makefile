ckernel: kernel_u.asm app_u.asm
	echo "compile successful..."

kernel_u.asm: ckernel.o
	objconv -fnasm ./bin/ckernel.o ./bin/ckernel_u.asm

ckernel.o: write_vga_desktop.o win_sheet.o mem_util.o timer.o global_define.o 	multi_task.o 
	ld -m elf_i386 -r ./bin/write_vga_desktop.o ./bin/mem_util.o \
		./bin/win_sheet.o -o ./bin/ckernel.o ./bin/timer.o \
		./bin/global_define.o ./bin/multi_task.o

write_vga_desktop.o : write_vga_desktop.c win_sheet.c win_sheet.h mem_util.c \
	mem_util.h timer.h timer.c global_define.h global_define.c multi_task.h \
	multi_task.c
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/write_vga_desktop.o \
		write_vga_desktop.c -fno-stack-protector

win_sheet.o: win_sheet.c win_sheet.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/win_sheet.o \
		win_sheet.c -fno-stack-protector

mem_util.o: mem_util.c mem_util.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/mem_util.o \
		mem_util.c -fno-stack-protector

timer.o: timer.c timer.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/timer.o \
		timer.c -fno-stack-protector

global_define.o: global_define.c global_define.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/global_define.o \
		global_define.c

multi_task.o: multi_task.c multi_task.h
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/multi_task.o \
		multi_task.c -fno-stack-protector

app_u.asm: app.o
	objconv -fnasm ./bin/app.o ./bin/app_u.asm

app.o: app.c
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/app.o  app.c \
		-fno-stack-protector

.PHONY:clean
clean:
	rm -rf ./*.o

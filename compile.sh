#!/bin/bash

c_file_name="write_vga_show_memory"
c_kernel_name="ckernel"

echo ${c_file_name}

ShowTip() {
    if [ "0" -eq $? ]; then
        echo -e "\033[32m $1 \033[0m"
    else
        echo -e "\033[31m $2 \033[0m"
        exit
    fi
}

if [ "$1"x = "clear"x ]; then
    rm -rf ./bin
    rm -rf ${c_file_name}.asm
    echo -e "\033[32m clear successful \033[0m"
    exit
fi


mkdir -p bin
ShowTip "create bin dir successful" "create bin dir error"

gcc -m32 -fno-asynchronous-unwind-tables -s -c -o \
./bin/mem_util.o mem_util.c

gcc -m32 -fno-asynchronous-unwind-tables -s -c -o \
./bin/${c_file_name}.o ${c_file_name}.c

cd ./bin/
ld -m elf_i386 -r ${c_file_name}.o mem_util.o -o ${c_kernel_name}.o
cd ..

#ld -m elf_i386 -r ./bin/${c_file_name}.o ./bin/mem_util.o -o ./bin/${c_file_name}.o

objconv -fnasm ./bin/${c_kernel_name}.o -o ${c_kernel_name}.asm 
ShowTip "objconv write_vag.o successful" "objconv write_vag.o error"

sed -i '/^global*/d' ${c_kernel_name}.asm
sed -i '/^SECTION*/d' ${c_kernel_name}.asm
sed -i '/^extern*/d' ${c_kernel_name}.asm

nasm boot.asm -o ./bin/boot.bat
ShowTip "compile boot.asm successful" "compile boot.asm error"

nasm kernel.asm -o ./bin/kernel.bat
ShowTip "compile kernel.asm successful" "compile kernel.asm error"

#nasm boot_read5M.asm -o ./bin/boot.bat
#ShowTip "compile boot_read5M.asm successful" "compile boot_read5M.asm error"

javac src/OperatingSystem.java src/Floppy.java  -d ./bin/
cd ./bin
ShowTip "java  OperatingSystem" "java  OperatingSystem"
java  OperatingSystem
ShowTip "java  OperatingSystem successful " "java  OperatingSystem error"
cd ..

echo -e "\033[32m generate successful \033[0m"

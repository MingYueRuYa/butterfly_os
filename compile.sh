#!/bin/bash

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
    rm -rf write_vga.asm
    echo -e "\033[32m clear successful \033[0m"
    exit
fi


mkdir -p bin
ShowTip "create bin dir successful" "create bin dir error"

gcc -m32 -fno-asynchronous-unwind-tables -s -c -o ./bin/write_vga.o write_vga.c
objconv -fnasm ./bin/write_vga.o -o write_vga.asm 
ShowTip "objconv write_vag.o successful" "objconv write_vag.o error"

sed -i '/^global*/d' write_vga.asm
sed -i '/^SECTION*/d' write_vga.asm
sed -i '/^extern*/d' write_vga.asm

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

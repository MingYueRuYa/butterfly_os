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
    echo -e "\033[32m clear successful \033[0m"
    exit
fi


mkdir -p bin
ShowTip "create bin dir successful" "create bin dir error"

nasm boot.asm -o ./bin/boot.bat
ShowTip "compile boot.asm successful" "compile boot.asm error"

nasm kernel.asm -o ./bin/kernel.bat
ShowTip "compile kernel.asm successful" "compile kernel.asm error"

javac src/OperatingSystem.java src/Floppy.java  -d ./bin/
cd ./bin
ShowTip "java  OperatingSystem" "java  OperatingSystem"
java  OperatingSystem
ShowTip "java  OperatingSystem successful " "java  OperatingSystem error"
cd ..

echo -e "\033[32m generate successful \033[0m"

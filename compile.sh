#!/bin/bash

if [ "$1"x = "clear"x ]; then
    rm -rf ./bin
    echo -e "\033[32m clear successful \033[0m"
    exit
fi


mkdir -p bin

if [ "0" -eq $? ]; then
    echo -e "\033[32m create bin dir successful \033[0m"
else
    echo -e "\033[31m create bin dir error \033[0m"
    exit
fi

nasm boot.asm -o ./bin/boot.bat
if [ "0" -eq $? ]; then
    echo -e "\033[32m compile boot.asm successful \033[0m"
else
    echo -e "\033[31m compile boot.asm error \033[0m"
    exit
fi

javac src/OperatingSystem.java -d ./bin/
javac src/Floppy.java -d ./bin/

cd ./bin
if [ "0" -eq $? ]; then
    echo -e "\033[32m java  OperatingSystem \033[0m"
else
    echo -e "\033[31m java  OperatingSystem\033[0m"
    exit
fi
java  OperatingSystem
cd ..
echo -e "\033[32m generate successful \033[0m"

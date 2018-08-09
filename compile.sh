#!/bin/bash

mkdir -p bin

nasm boot.asm -o ./bin/boot.bat
javac src/OperatingSystem.java -d ./bin/

cd ./bin
java  OperatingSystem
cd ..
mv ./system.img ./bin/

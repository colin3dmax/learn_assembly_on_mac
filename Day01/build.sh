#!/bin/sh
rm HelloWorld
rm *.o
nasm -f macho HelloWorld.asm
ld -static -o HelloWorld -e start HelloWorld.o
./HelloWorld
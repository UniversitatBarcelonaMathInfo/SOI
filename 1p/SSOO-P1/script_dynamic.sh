#!/bin/bash     

rm myprog_dynamic

clear

echo "Compiling files.."
gcc -c main.c
gcc -c counter.c -fPIC
gcc -c calculator.c -fPIC
echo "Generate static lib"
ar rcs libs/libmyutils.so counter.o calculator.o
echo "Linking files.."
gcc main.o -o myprog_dynamic libs/libmyutils.so -l m
echo "Cleaning files"
rm -f *.o *~
echo "Executing myprog.."
./myprog_dynamic
echo "Done!"

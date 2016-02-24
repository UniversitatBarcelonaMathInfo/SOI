#!/bin/bash     

rm myprog_static

clear

echo "Compiling files.."
gcc -c main.c
gcc -c counter.c
gcc -c calculator.c
echo "Generate static lib"
ar rcs libs/libmyutils.a counter.o calculator.o
echo "Linking files.."
gcc main.o -o myprog_static libs/libmyutils.a -l m
echo "Cleaning files"
rm -f *.o *~
echo "Executing myprog.."
./myprog_static
echo "Done!"

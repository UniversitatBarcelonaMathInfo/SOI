#!/bin/bash     

rm myprog

clear

echo "Compiling files.."
gcc -c main.c
gcc -c counter.c
gcc -c calculator.c
echo "Linking files.."
gcc main.o counter.o calculator.o -o myprog -l m
echo "Cleaning files"
rm -f *.o *~
echo "Executing myprog.."
./myprog
echo "Done!"

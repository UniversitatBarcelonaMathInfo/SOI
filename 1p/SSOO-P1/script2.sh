#!/bin/bash     

rm myprog2

clear

echo "Compiling files.."
gcc -c main2.c
gcc -c counter.c
gcc -c calculator.c
echo "Linking files.."
gcc main2.o counter.o calculator.o -o myprog2 -l m
echo "Cleaning files"
rm -f *.o *~
echo "Executing myprog.."
./myprog2
echo "Done!"

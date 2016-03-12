#!/bin/bash

rm -fr practica2
mkdir practica2

# entrem a la practica 2
cd practica2

# creem els 5 directoris demanats
for i in {1..5}
do
	mkdir dir_$i
done

# crear 10 directoris dins de dir_1
for i in {1..10}
do
	mkdir dir_1/carpeta_$i
done

echo "f" > foo1.txt
echo "f" > foo2.txt
echo "f" > foo.c
echo "f" > README

cp *.txt dir_2
cp foo* dir_3

for i in $(ls)
do
	if [ -d $i ];
	then
		echo "D- $i"
		ls $i
	else
		echo "A- $i"
	fi
done

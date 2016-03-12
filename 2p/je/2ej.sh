#!/bin/bash

cd practica2

echo "esta al $(pwd)"
echo "User: $USER"

rm -f numbers

for i in {1..100}
do
	echo $i >> numbers
done
cat numbers
sleep 1
head -n 3 numbers
tail -n 15 numbers
for i in $(cat numbers)
do
	echo "$(expr $i \* 10 )"
done

#!/bin/bash

echo "ha entrat $# valors"
echo "-$4-$0-"

if [ $1 == resta ]
then
	echo "$2 - $3 = $(expr $2 - $3) ."
elif [ $1 == suma ]
then
	echo "$2 + $3 = $(expr $2 + $3) ."
else
	echo "No entes arg1 = $1 ."
fi

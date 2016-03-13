#!/bin/bash

echo "Ha entrat: $@"

# part 1
if [ $# == 0 ]
then
	echo "Error, necessitem una entrada"
	exit 1 # part 2
elif [ ! -f $1 ]
then
	echo "Error, el fitxer \`$1\` no existeix"
	exit 2 # part 2
fi

# part 4
t=$(head $1 -n 1)

while [ "$s" != "$t" ]
do
	s=${t%%,*?}
	t=${t#?*,}
	for ((i=0; i < $2; i++))
	do
		echo -n "$s "
	done
	echo # tirar envall
done

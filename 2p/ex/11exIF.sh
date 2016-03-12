#!/bin/bash
a=5
if [ $a -le 6 -a $USER == arnau -a -f 11ex.sh ] && [ -d ../ex ]
then
	echo "hello!"
fi

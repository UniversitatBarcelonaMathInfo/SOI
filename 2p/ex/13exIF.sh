#!/bin/bash
if ./exit then == 10; then echo "ten"; else echo "not ten"; fi
./exit twenty
e=$?
if [ $e == 10 ]
	then echo "then"
elif [ $e == 20 ]
	then echo "twenty"
else echo "unknow"
fi

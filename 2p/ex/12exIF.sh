#!/bin/bash
if cat foo || ! cat foo; then echo "yes 1"; else echo "no 1";fi
echo $?
if cat foo
then
	echo "yes 2"
else
	echo "no 2"
fi
echo $?
if ! cat foo
then
	echo "yes 3"
else
	echo "no 3"
fi
echo $?
if [cat foo] || [! cat foo]; then echo "yes 4"; else echo "no 4";fi
echo $?

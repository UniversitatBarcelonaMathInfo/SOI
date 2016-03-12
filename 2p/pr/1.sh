#!/bin/bash
rm -rf problema2

# 1er punt
mkdir problema2

# 2n punt
cd problema2

# 3r Crea 'test' solo si no existe fitxero foo
if [ ! -f foo ] # comprova la no existeincia del fitxer foo
then
	mkdir test
fi

# 4t crear test{3..6} i dins d'ells subtest{2..8}
for i in {3..6}
do
	mkdir test$i
	for j in {2..8}
	do
		mkdir test$i/subtest$j
	done
done

# Prep 5
mkdir test1 test2
for i in main.c sthg.c sthg.h sthg2.c sthg2.h
do
	echo "" > test1/$i
done

# 5e, Imagina es troben fitxers main.c, sthg.c, sthg.h, sthg2.c i sthg2.h// copials *.c i mou al test2
cp test1/*.c test2

# 6e, canvia el nom del test2/main.c per test2/newmain.cpp
mv test2/main.c test2/newmain.cpp

# 7e, elimina tots els .h de test1
rm test1/*.h

# 8e, elimina el directori test5
rm test5 -r

# 9e, mostra tots els directoris continguts en el directori actual
for i in $(ls)
do
	if [ -d $i ]
	then
		for j in $(ls $i)
		do
			if [ -d $i/$j ]
			then
				echo "$i/$j"
			fi
		done
	fi
done

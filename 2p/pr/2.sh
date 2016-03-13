#!/bin/bash

echo 1: Imprimir ruta absoluta del home del usuari
echo $HOME
echo
echo 2: Mostrar enumerades el fitxer kk
cat kk -n
echo
echo 3: Mostrar 6 primeres linies dels fitxers kk1 i kk2
head kk{1,2} -n 6
echo
echo 4: Fitxer integer, mostrar dividit 7
for i in $(cat integers)
do
	echo "$(expr $i / 7)"
done

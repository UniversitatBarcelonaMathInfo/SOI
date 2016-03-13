\" Definim com volem les equacions a on les volem
.EQ
delim @$
.EN

.TL
Shell Scripting
.AU
Arnau Sistach Reinoso
.AI
Entrega de la pr\(`actica 2
.AB
Un cop llegit el pdf, on tamb\('e em fet tots els exemples i exercicis. Ara podem fer sense masses dificultats la entrega
en format pdf com \('es demanat a l'enunciat.
.AE

.NH
Problema: Treballar amb fitxers.
.LP
Edici\('o i creaci\('o de fitxers.
.NH 2
Crea el directori problema2.
.IP
mkdir problema2
.NH 2
Entra en ell.
.IP
cd problema2
.NH 2
Crea el directori test si no existeix el directori foo.
.LP
Comprova la no existeincia del fitxer foo amb [ ! -f foo ].
.IP
if [ ! -f foo ]
.IP
then
.IP
	mkdir test
.IP
fi

\" part 1.4
.NH 2
Crea test{3..6} i dins d'ells subtest{2..8}.
.LP
Per crear llistes {a..b} \('es una bona soluci\('o. I -p permet crear tot automaticament sense que el mateix hagi sigut creat.
.IP
mkdir -p test{3..6}/subtest{2..8}

\" part 1.5
.NH 2
Copia tots els fitxers de test1 d'extensi\('o c al directori test2.
.LP
Realment l'enunciat diu que imaginis que dins de test1 hi ha uns fitxers. De fet, si seguim el patro l\(`ogic de creaci\('o fins ara, obtenim que aix\(`o \('es impossible ja que no existeix el test1 i tampoc existeix el test2. Aix\('i que imagino i aqu\('i est\(`a la meva resposta.
.IP
cp test1/*.c test2

\" part 1.6
.NH 2
Canvia el nom del test2/main.c per test2/newmain.cpp.
.IP
mv test2/main.c test2/newmain.cpp

\" part 1.7
.NH 2
Elimina tots els fitxers d'extenci\('o h del test1.
.IP
rm test1/*.h

\" part 1.8
.NH 2
Elimina test5 i tot el seu contingut.
.LP
rmdir serveix per eliminar fitxers buits, per\(`o reclama d'eliminar un per un.
Llavors he optat pel rm, on amb -r ho fa de forma recursiva.
.IP
rm test5 -r

\" part 1.9
.NH 2
Mostra el contingut de tots els directoris continguts en el directori actual.
.LP
Per ls, tenim ls facilitat -R per entrar dins dels directoris de forma recursiva.
Per\(`o no he sapigut fer que nom\('es mostres els directoris.
.IP
for i in $(ls)
.IP
do
.IP
	if [ -d $i ]
.IP
	then
.IP
		for j in $(ls $i)
.IP
		do
.IP
			if [ -d $i/$j ]
.IP
			then
.IP
				echo "$i/$j"
.IP
			fi
.IP
		done
.IP
	fi
.IP
done

\" part 2
.NH
Problema: I/O
.NH 2
Imprimeix el cam\('i absolut del usuari.
.IP
echo $HOME

.NH 2
Mostrar el contingut de kk enumerat per l\('inies.
.IP
cat kk -n

.NH 2
Mostrar les 6 primeres l\('inies dels fitxers kk1 i kk2.
.IP
head kk{1,2} -n 6

.NH 2
Llegeix el fitxer integers i imprimeix el valor dividit per 7.
.LP
Se suposa que el fitxer nom\('es cont\('e nombres enters.
.IP
for i in $(cat integers)
.IP
do
.IP
	echo "$(expr $i / 7)"
.IP
done

\" part 3
.NH
Problema: Permisos
.LP
Afegir el permis de lectura al propietari i usuaris no registrats.
.br
Eliminar el permis d'escriptura als usuaris no registrats.
.br
Nom\('es el permis d'execuci\('o pel grup.
.br
Tot aix\(`o pel fitxer foo.
.IP
chmod uo+r,o-w,g=x foo

\" part 4
.NH
Problema: Permisos
.LP
Usuari: escriptura i execuci\('o.
.br
Grup: lectura i execuci\('o.
.br
Altres: lectura i escriptura.
.IP
chmdo u=wx,g=rx,o=rw foo

\" part 5
.NH
Problema: Script Files
.IP 1
Fitxer d'entrada existeix.
.IP 2
Para si el fitxer no existeix.
.IP 3
El contingut \('es del format:
.TS
center;
c.
<string1>,<string2>,...,<stringN>
.TE
.IP 4
Per la entrada 2 que anomenarem k, volem una sortida:
.TS
center delim(@$);
c.
@roman "<string1>" sup 1$ @roman "<string1>" sup 2$ @...$ @roman "<string1>" sup k$
@roman "<string2>" sup 1$ @roman "<string2>" sup 2$ @...$ @roman "<string2>" sup k$
@ldots$
@roman "<stringN>" sup 1$ @roman "<stringN>" sup 2$ @...$ @roman "<stringN>" sup k$
.TE
.IP
#!/bin/bash

.IP
if [ $# == 0 ] # part 1
.IP
then
.IP
	echo "Error, necessitem una entrada"
.IP
	exit 1 # part 2
.IP
elif [ ! -f $1 ] # part 1
.IP
then
.IP
	echo "Error, el fitxer \`$1\` no existeix"
.IP
	exit 2 # part 2
.IP
fi
.IP #
Suposem que la part 3 \('es complerta.
.IP
# part 4
.IP
t=$(head $1 -n 1)
.IP
while [ "$s" != "$t" ]
.IP
do
.IP
	s=${t%%,*?}
.IP
	t=${t#?*,}
.IP
	for ((i=0; i < $2; i++))
.IP
	do
.IP
		echo -n "$s "
.IP
	done
.IP
	echo # tirar envall
.IP
done

for n in {1..10}
do
	for i in {1..10}
	do
		echo "$n * $i = $(expr $i \* $n)"
	done
done

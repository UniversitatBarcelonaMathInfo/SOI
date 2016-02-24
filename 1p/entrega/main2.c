#include <stdio.h>
#include <string.h>
#include "calculator.h"
#include "counter.h"


#define X1 2
#define Y1 2
#define X2 1
#define Y2 1

#define SENTENCE "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
#define CHARACTER 'a'


int main ( argc, argv )
	int argc;
	char * argv [];
{
	int i;
	printf("-------------------------");
	for ( i = 1; i < argc; i++ )
	{
		if ( 0 == strcmp ( argv[i], "-e") )
			printf(" \n euclidean distance: %f", euclideanDistance(X1,Y1,X2,Y2));
		else if ( 0 == strcmp ( argv[i], "-m") )
			printf(" \n manhattan distance: %f", manhattanDistance(X1,Y1,X2,Y2));
		else if ( 0 == strcmp ( argv[i], "-w") )
			printf(" \n number of words: %d", countWords(SENTENCE));
		else if ( 0 == strcmp ( argv[i], "-o") )
			printf(" \n number of occurrences: %d", countOccurrences(SENTENCE,CHARACTER));
	}
	printf("\n--------------------------\n");

return 0;
}

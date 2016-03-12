#include <stdio.h>
#include <string.h>
int main ( int argc, char * argv [] )
{
	char *c;
	if ( argc >= 2 )
	{
		c = argv [ 1 ];
		if ( ! strcmp ( c, "ten"	) ) return 10;
		if ( ! strcmp ( c, "twenty"	) ) return 20;
	}
return 100;
}

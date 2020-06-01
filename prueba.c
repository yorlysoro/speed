
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{
	int i;
	char upgrade[10] = "upgrade";
	for(i = 1; i < argc; i++)	
	{
		if(strcmp(argv[i],upgrade) == 0)
		printf("%s\n", argv[i]);
		else
		puts("error!");
	}
	return 0;
}

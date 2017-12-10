// ConsoleApplication3.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

int main()
{
	int tab[10] = { 43,21,43,65,72,12,456,87,1,7 };
    
	// for
	int i;
	for (i = 0; i < 10; i++)
	{
		int e = tab[i];
		
		if (e == 43)
		{
			e = 0;
		}

		printf("%d ", e);
	}
	
	printf("\n");

	// while
	int j = 0;

	while (j < 10)
	{
		int e = tab[j];

		switch (e)
		{
		case 72:
			e = e * 3;
			break;
		case 1:
			e = -100;
			break;
		default:
			e =- 1; // e = e - 1
			break;
		}

		printf("%d ", e);
		j++;
	}

	printf("\n");

	// do-while

	int k = 0;

	do
	{
		int e = tab[k];
		k++;

		if (e == 87)
			break;

		if (e > 50)
		{
			continue;
		}

		printf("%d ", e);

	} while (k < 10);

	printf("\n");
	return 0;
}


// ConsoleApplication6.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <stdio.h>


int main()
{
	// char a[15] = "zaaaaaaaaaaaaa"; // 1383
	char a[15] = "llllllllllllll"; // 1512
	int i = 0;
	int sum = 0;

	for (i = 0; i < 15; i++)
	{
		sum = sum + a[i];

		printf("%c -> %d\n", a[i], a[i]);
	}

	printf("sum: %d\n", sum);
    return 0;

	// --- ---

	int i = 4;

	if (i < 3)
	{
		printf("ble ble ble");
	}
	else if (i > 4)
	{
		printf("ho ho ho");
	}
	return 0;
}


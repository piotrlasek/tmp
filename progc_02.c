// ConsoleApplication3.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

float mean(int tab[], int length)
{
	int sum = 0;
	float mean = 0;

	int i;
	for (i = 0; i < length; i++) {
		sum = sum + tab[i];
	}

	mean = sum / length;

	return mean;
}

int max(int tab[], int len)
{
	int max = tab[0];

	int i;
	for (i = 1; i < len; i++)
	{
		if (tab[i] > max)
		{
			max = tab[i];
		}
	}

	return max;
}

int max_ind(int tab[], int len)
{
	int max_ind = 0;

	int i;
	for (i = 1; i < len; i++)
	{
		if (tab[i] > tab[max_ind])
		{
			max_ind = i;
		}
	}

	return max_ind;
}

int main()
{
	int tab[5] = { 1, 2, 7, 4, 5 };
	int length = 5;

	printf("mean: %f\n", mean(tab, 5));
	printf("max: %d\n", max(tab, 5));
	printf("max_ind: %d\n", max_ind(tab, 5));
}


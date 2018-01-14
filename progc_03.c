// ConsoleApplication3.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

void swap1(int a, int b)
{
	int t = a;
	a = b;
	b = t;
}

void swap2(int* a, int *b)
{
	int t = *a;
	*a = *b;
	*b = t;
}

void swap3(int **a, int **b)
{
	int **t = a;
	**a = **b;
	**b = **t;
}


int main()
{
	int i = 1;
	int j = 2;

	printf("      i=%d, j=%d\n", i, j);

	swap1(i, j);
	printf("s1    i=%d, j=%d\n", i, j);

	swap2(&i, &j);
	printf("s2    i=%d, j=%d\n", i, j);

	/*int* ptr_i = &i;
	int* ptr_j = &j;

	swap3(&ptr_i, &ptr_j);

	printf("s3    i=%d, j=%d\n", i, j);*/
}


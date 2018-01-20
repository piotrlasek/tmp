int compare(char* s1, char* s2) {
	int i = 0;
	int result = 0;
	while (*(s1 + i) != 0 && *(s2 + i) != 0) {
		if (*(s1 + i) > *(s2 + i)) {
			result = 1;
			break;
		}
		else if (*(s1 + i) < *(s2 + i)) {
			result = -1;
			break;
		}
		i++;
	}
	return result;
}

int main()
{
	char s1[10] = "aab";
	char s2[10] = "aaa";

	int result = compare(s2, s1);
	printf("result: %d\n", result);
    return 0;
}

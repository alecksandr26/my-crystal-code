#include <stdio.h>

#define SIZE 10000

int toSort[SIZE];

void build(int l[]);
void sort(int l[]);

int main(void)
{
	build(toSort);
	sort(toSort);

	return 0;
}

void build(int l[])
{
	int num = SIZE;
	for (int i = 0; i < SIZE; i++)
		l[i] = num--;
}

void sort(int l[])
{
	int sorted = 0;
	int n = SIZE;

	while (!sorted) {
		sorted = 1;
		for (int i = 0; i < n - 1; i++) {
			if (l[i] > l[i + 1]) {
				int temp = l[i + 1];
				l[i + 1] = l[i];
				l[i] = temp;
				sorted = 0;
			}
		}
		n--;
	}
}

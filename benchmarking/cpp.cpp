#include <iostream>
#include <vector>

#define SIZE 10000

std::vector<int> toSort(SIZE);

void build(std::vector<int> &l);
void sort(std::vector<int> &l);

int main(void)
{
	build(toSort);
	sort(toSort);

	return 0;

}

void build(std::vector<int> &l)
{
	int num = SIZE;
	for (int i = 0; i < SIZE; i++)
		l[i] = num--;
}

void sort(std::vector<int> &l) {
	int sorted = 0;
	
	/* Bubble sort */
	while (!sorted) {
		sorted = 1;
		for (int i = 0; i < SIZE - 1; i++) {
			if (l[i] > l[i + 1]) {
				int temp = l[i + 1];
				l[i + 1] = l[i];
				l[i] = temp;
				sorted = 0;
			}
		}
	}
}





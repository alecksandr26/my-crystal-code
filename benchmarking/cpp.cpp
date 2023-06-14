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
	l.resize(SIZE);
	for (int i = 0; i < SIZE; i++)
		l[i] = num--;
}

void sort(std::vector<int> &l)
{
	int n = l.size();
	bool sorted = false;

	while (!sorted) {
		sorted = true;
		for (int i = 0; i < n - 1; i++) {
			if (l[i] > l[i + 1]) {
				std::swap(l[i], l[i + 1]);
				sorted = false;
			}
		}
		n--;
	}
}

#include <stdio.h>
#include <stdlib.h>
#define PARENT(i) (i - 1) / 2
#define LEFT_CHILD(i) (2 * i) - 1
#define RIGHT_CHILD(i) (2 * i) + 2
#define MAX 100

void swap(int *h, int from, int to)
{
    int temp = h[to];
    h[to] = h[from];
    h[from] = temp;
}
void bubble_down(int i, int *h)
{
    int iter = 0;
    while (LEFT_CHILD(i) < h[i] || RIGHT_CHILD(i) < h[i])
    {
        if (RIGHT_CHILD(i) >= LEFT_CHILD(i))
        {
            swap(h, h[i], LEFT_CHILD(i));
            i = LEFT_CHILD(i);
        }
        else
        {
            swap(h, h[i], RIGHT_CHILD(i));
            i = RIGHT_CHILD(i);
        }
    }
}

void ordenaHeap(int h[], int N)
{
    for (int i = N / 2 - 1; i >= 0; i--)
        bubble_down(i, h);
    for (int i = N - 1; i > 0; i--)
    {
        int temp = h[0];
        h[0] = h[i];
        h[i] = temp;
    }
}

int main()
{
    int val[] = {100, 40, 30, 12, 90};
    ordenaHeap(val, 5);
    for (int i = 0; i < 5; i++)
    {
        printf("%d\n", val[i]);
    }
}
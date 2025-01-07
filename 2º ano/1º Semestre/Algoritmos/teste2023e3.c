#include <stdio.h>
#include <stdlib.h>
#define PARENT(i) (i - 1) / 2
#define MAX 17

void swap(int *h, int from, int to)
{
    int temp = h[to];
    h[to] = h[from];
    h[from] = temp;
}

void bubble_up(int i, int h[])
{
    while (h[PARENT(i)] > h[i])
    {
        swap(h, i, PARENT(i));
        i = PARENT(i);
    }
}

int decrease(int x, int y, int h[], int N)
{
    int i;
    for (i = 0; i < N; i++)
    {
        if (h[i] == x)
        {
            h[i] = y;
            break;
        }
    }
    // printf("-%d-",i);
    for (int i = 0; i < MAX; i++)
    {
        printf("%d\n", h[i]);
    }

    bubble_up(i, h);
    printf("\n");

    for (int i = 0; i < MAX; i++)
    {
        printf("%d\n", h[i]);
    }
}

int main()
{
    int val[] = {10,
                 15,
                 11,
                 16,
                 22,
                 35,
                 20,
                 21,
                 23,
                 34,
                 37,
                 80,
                 43,
                 22,
                 25,
                 24,
                 28};

    decrease(80, 12, val, MAX);
}
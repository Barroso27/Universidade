#include <stdio.h>
#include <stdlib.h>
#define PARENT(i) (i - 1) / 2
#define LEFT_CHILD(i) (2 * i) - 1
#define RIGHT_CHILD(i) (2 * i) + 2
#define MAX 17

typedef int Elem; // elementos da Heap

typedef struct
{
    int size;
    int used;
    Elem *values;
} Heap;

void swap(int *h, int from, int to)
{
    int temp = h[to];
    h[to] = h[from];
    h[from] = temp;
}

void bubble_up(int i, int *h)
{
    int iter = 0;
    while (h[PARENT(i)] > h[i])
    {
        swap(h, i, PARENT(i));
        i = PARENT(i);
        iter++;
    }
    if (iter == 0)
        iter++;
    printf("Iteraçoes = %d\n", iter);
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

void insertHeap(Heap *h, Elem x)
{
    Elem *mem = h->values;
    if (h->used == h->size)
    {
        mem = malloc(h->size * 2 * sizeof(Elem));
        h->size *= 2;
        // copiar elementos
        for (int i = 0; i < h->used; i++)
        {
            mem[i] = h->values[i];
        }
        h->values = mem;
    }
    h->values[h->used] = x;
    h->used++;
    bubble_up(h->values, h->used - 1);
}

int extractMin(Heap *h, Elem *x)
{
    if (h->used < 0)
    {
        *x = h->values[0];
        h->values[0] = h->values[h->used - 1];
        (h->used)--;
        bubble_down(h->values, h->used);
        return 1;
    }
    else
        return 0;
}
int main()
{
    Heap h;
    h.used = 0;
    h.size = 1;
    h.values = malloc(sizeof(Elem));
    insertHeap(&h, 30);
    insertHeap(&h, 60);
    insertHeap(&h, 40);
    insertHeap(&h, 10);
    insertHeap(&h, 100);
    insertHeap(&h, 20);
    insertHeap(&h, 90);
    insertHeap(&h, 50);
    insertHeap(&h, 80);
    insertHeap(&h, 70);
    for (int i = 0; i < h.used; i++)
    {
        printf("%d\n", h.values[i]);
    }
}
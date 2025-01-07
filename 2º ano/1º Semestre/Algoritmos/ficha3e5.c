// #include <stdio.h>
// #include <stdlib.h>
//// #define PARENT(i) (i - 1) / 2
// #define LEFT_CHILD(i) (2 * i) - 1
// #define RIGHT_CHILD(i) (2 * i) + 2
// #define MAX 100
//
// typedef struct pQueue
//{
//     int valores[MAX];
//     int tamanho;
// } PriorityQueue;
//
// void empty(PriorityQueue *q)
//{
//     q->tamanho = 0;
// }
//
// int isEmpty(PriorityQueue *q)
//{
//     return q->tamanho == 0;
// }
//
// void swap(int *h, int from, int to)
//{
//     int temp = h[to];
//     h[to] = h[from];
//     h[from] = temp;
// }
// void bubble_down(int i, int *h)
//{
//     int iter = 0;
//     while (LEFT_CHILD(i) < h[i] || RIGHT_CHILD(i) < h[i])
//     {
//         if (RIGHT_CHILD(i) >= LEFT_CHILD(i))
//         {
//             swap(h, h[i], LEFT_CHILD(i));
//             i = LEFT_CHILD(i);
//         }
//         else
//         {
//             swap(h, h[i], RIGHT_CHILD(i));
//             i = RIGHT_CHILD(i);
//         }
//     }
// }
// void bubble_up(int i, int *h)
//{
//     int parent = (i - 1) / 2;
//     while (h[i] < h[parent] && i != 0)
//     {
//         swap(h, i, parent);
//         i = parent;
//         parent = (i - 1) / 2;
//     }
// }
//
// int add(int x, PriorityQueue *q)
//{
//     if (q->tamanho == MAX)
//         return 1;
//     q->valores[q->tamanho] = x;
//     bubble_up(q->tamanho, q->valores);
//     (q->tamanho)++;
// }
//
// int remove2(PriorityQueue *q, int *rem)
//{
//     if (q->tamanho == 0)
//         return 1;
//     rem = &(q->valores[0]);
//     q->valores[0] = q->valores[q->tamanho - 1];
//     bubble_down(q->tamanho, q->valores);
//     q->tamanho--;
// }
//
// void heapify(int v[], int N)
//{
//     for (int i = 1; i < N; i++)
//         bubble_up(N, v);
// }
//
// int main()
//{
//     int val[] = {100, 40, 30, 12, 90};
//     heapify(val, 4);
//     for (int i = 0; i < 5; i++)
//     {
//         printf("%d\n", val[i]);
//     }
// }
#include <stdio.h>
#include <stdlib.h>

#define Max 100

typedef struct pQueue
{
    int valores[Max];
    int tamanho;
} PriorityQueue;

void empty(PriorityQueue *q)
{
    q->tamanho = 0;
}
int isEmpty(PriorityQueue *q)
{
    return q->tamanho == 0;
}

void swap(int *a, int *b)
{
    int c = *a;
    *a = *b;
    *b = c;
}

void bubbleUp(int valores[], int i)
{
    int parent = (i - 1) / 2;

    while (valores[i] < valores[parent] && i != 0)
    {
        swap(&valores[i], &valores[parent]);
        i = parent;
        parent = (i - 1) / 2;
    }
}

void heapefy(int valores[], int tam)
{
    for (int i = 1; i < tam; i++)
    {
        bubbleUp(valores, i);
    }
}

void bubbleDown(int valores[], int tam)
{

    int i = 0, min;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    while (left < tam)
    {
        min = left;
        if (right < tam && valores[right] < valores[left])
            min = right;
        if (valores[min] < valores[i])
        {
            swap(&valores[i], &valores[min]);
            i = min;
        }
        else
            break;
    }
}

int add(int x, PriorityQueue *q)
{

    if (q->tamanho == Max)
        return 1;
    q->valores[(q->tamanho)] = x;
    bubbleUp(q->valores, q->tamanho);
    (q->tamanho)++;

    return 0;
}

int remove2(PriorityQueue *q, int *rem)
{
    rem = &(q->valores[0]);
    q->valores[0] = q->valores[q->tamanho - 1];
    bubbleDown(q->valores, (q->tamanho));
    (q->tamanho)--;
}

int main(int argc, char const *argv[])
{
    int val[] = {100, 40, 30, 12, 90};

    heapefy(val, 5);

    for (int i = 0; i < 5; i++)
    {
        printf("%d\n", val[i]);
    }

    return 0;
}

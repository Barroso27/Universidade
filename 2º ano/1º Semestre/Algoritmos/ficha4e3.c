#include <stdio.h>
#include <stdlib.h>

#define NV 10
typedef struct aresta
{
    int dest;
    int custo;
    struct aresta *prox;
} *LAdj, *GrafoL[NV];
typedef int GrafoM[NV][NV];

int max(int a, int b)
{
    return (a > b) ? a : b;
}

int inDegree(GrafoL g)
{
    int maxGrauEntrada = 0;
    for (int i = 0; i < NV; i++)
    {
        int contador = 0;
        LAdj atual = g[i];
        while (atual != NULL)
        {
            contador++;
            atual = atual->prox;
        }
        maxGrauEntrada = max(maxGrauEntrada, contador);
    }
    return maxGrauEntrada;
}
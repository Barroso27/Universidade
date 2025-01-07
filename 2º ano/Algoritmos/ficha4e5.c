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

int homorfOK(GrafoL g, GrafoL h, int f[])
{
    for (int i = 0; i < NV; i++)
    {
        LAdj atual = g[i];
        while (atual != NULL)
        {
            int origem = i;
            int destino = atual->dest;
            if (!existeAresta(h, f[origem], f[destino]))
                return 0;
            atual = atual->prox;
        }
    }
    return 1;
}

int existeAresta(GrafoL grafo, int origem, int destino)
{
    LAdj atual = grafo[origem];

    while (atual != NULL)
    {
        if (atual->dest == destino)
            return 1;
        atual = atual->prox;
    }
    return 0;
}
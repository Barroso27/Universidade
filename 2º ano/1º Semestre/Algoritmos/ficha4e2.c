
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

void inverte(GrafoL in, GrafoL out)
{
    for (int i = 0; i < NV; i++)
    {
        out[i] = NULL;
    }

    for (int i = 0; i < NV; i++)
    {
        LAdj atual = in[i];
        while (atual != NULL)
        {
            int destino = atual->dest;
            LAdj novaAresta = (LAdj)malloc(sizeof(struct aresta));
            novaAresta->dest = i;
            novaAresta->custo = atual->custo;
            novaAresta->prox = out[destino];
            out[destino] = novaAresta;
            atual = atual->prox;
        }
    }
}
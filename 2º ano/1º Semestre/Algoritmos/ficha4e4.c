
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

int colorOK(GrafoL g, int cor[])
{
    for (int i = 0; i < NV; i++)
    {
        LAdj atual = g[i];
        while (atual != NULL)
        {

            int vertAdj = atual->dest;
            if (cor[i] == cor[vertAdj])
            return 0;
        }
        atual = atual->prox;
    }
    return 1;
}
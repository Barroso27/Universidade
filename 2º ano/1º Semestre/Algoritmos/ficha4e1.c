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

void fromMat(GrafoM in, GrafoL out)
{
    int i, j;
    for (i = 0; i < NV; i++)
    {
        out[i] = NULL;
        for (j = 0; j < NV; j++)
        {
            if (in[i][j] != 0)
            {
                LAdj novaAresta = (LAdj)malloc(sizeof(struct aresta));
                novaAresta->dest = j;
                novaAresta->custo = in[i][j];
                novaAresta->prox = out[i];
                out[i] = novaAresta;
            }
        }
    }
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct no
{
    int info;
    int bal;
    struct no *esq, *dir;
} No;
typedef No *Arvore;
Arvore criarNo(int info)
{
    Arvore novo = (Arvore)malloc(sizeof(No));
    if (novo == NULL)
    {
        // Tratamento de erro: falha na alocação de memória
        exit(EXIT_FAILURE);
    }
    novo->info = info;
    novo->bal = 0;
    novo->esq = novo->dir = NULL;
    return novo;
}

Arvore rr(Arvore arv)
{
    if (arv == NULL || arv->esq == NULL)
    {
        return arv;
    }
    Arvore novaRaiz = arv->esq;
    arv->esq = novaRaiz->dir;
    novaRaiz->dir = arv;

    arv->bal = 0;
    novaRaiz->bal = 0;
    return novaRaiz;
}
void imprimirArvore(Arvore arv)
{
    if (arv != NULL)
    {

        printf("(%d, %d) ", arv->info, arv->bal);
        imprimirArvore(arv->esq);
        imprimirArvore(arv->dir);
    }
}

int main()
{
    // Exemplo de uso
    Arvore raiz = criarNo(3);
    raiz->esq = criarNo(2);
    raiz->esq->esq = criarNo(1);

    printf("Árvore AVL antes da rotação:\n");
    imprimirArvore(raiz);
    printf("\n");

    // Aplica a rotação simples para a direita (RR)
    raiz = rr(raiz);

    printf("Árvore AVL depois da rotação RR:\n");
    imprimirArvore(raiz);
    printf("\n");

    return 0;
}
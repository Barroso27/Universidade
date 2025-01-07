#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SIZE 1009

typedef struct no
{
    char matricula[6];
    struct n *next;
} NO;
typedef NO *Tabela[SIZE];

int hash(char matricula[6])
{
    int sum = 0;
    for (int i = 0; i < 6; i++)
    {
        sum += (int)matricula[i];
    }
    return sum % SIZE;
}

int insert(Tabela t, char matricula[6])
{
    int indice = hash(matricula);
    NO *atual = t[indice];
    while (atual != NULL)
    {
        if (strcmp(atual->matricula, matricula) == 0)
        {
            return 0;
        }
        atual = atual->next;
    }
    NO *novoNO = (NO *)malloc(sizeof(NO));
    if (novoNO == NULL)
    {
        return -1;
    }
    strcpy(novoNO->matricula, matricula);
    novoNO->next = t[indice];
    t[indice] = novoNO;
    return 1;
}


int main() {
    Tabela tabela;
    memset(tabela, 0, sizeof(Tabela));

    // Exemplo de uso da função insert
    char matricula1[6] = "ABC123";
    char matricula2[6] = "DEF456";
    char matricula3[6] = "GHI789";

    insert(tabela, matricula1);
    insert(tabela, matricula2);
    insert(tabela, matricula3);

    // Tentativa de inserir matrícula repetida
    int resultado = insert(tabela, matricula2);

    if (resultado == 1) {
        printf("Inserção bem-sucedida!\n");
    } else if (resultado == 0) {
        printf("Matrícula já existe, não foi necessário inserir novamente.\n");
    } else {
        printf("Falha na alocação de memória durante a inserção.\n");
    }

    // Imprime a tabela hash


    return 0;
}
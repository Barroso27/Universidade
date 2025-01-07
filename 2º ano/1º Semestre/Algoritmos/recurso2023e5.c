#include <stdio.h>
#include <stdlib.h>
#define N 10

// void bold(int n)
//{
//     char *seq[] = {"\x1b[0m", "\x1b[1m"};
//     printf("%s", seq[!!n]);
// }
int maior_descida_2(int valores[], int *contadore)
{
    int descida = 0;
    int maiordescida = 0;
    int contador = 0;

    for (int i = 0; valores[i] < 1000; i++)
    {
        printf("-%d-", valores[i]);
    }
    for (int i = 0; valores[i] < 1000; i++)
    {
        contador++;
        if (valores[i] == 0)
        {
            if (valores[i + 1] == 0)
                break;
        }
    }

    for (int j = 0; valores[j] < contador; j++)
    {
        if (valores[j] == (valores[j + 1] + 1))
        {
            descida++;
        }
        else
        {
            if (descida > maiordescida)
                maiordescida = descida;
            descida = 0;
        }
    }
    return maiordescida;
}

int checarVOlta(int image[N][N], int *contador, int i, int j, int valores[], int *contadore)
{
    valores[*(contadore)] = image[i][j];
    (*contadore)++;

    if (image[i][j] == 0)
    {
        valores[(*contadore)] = 0;
        (*contador)++;
    }
    if (image[i + 1][j] == image[i][j] - 1)
    {
        (*contador) = (*contador) + 4;
        checarVOlta(image, contador, i + 1, j, valores, contadore);
    }
    else
    {
        (*contador) = (*contador) - 1;
    }
    if (image[i - 1][j] == image[i][j] - 1)
    {
        (*contador) = (*contador) + 4;
        checarVOlta(image, contador, i - 1, j, valores, contadore);
    }
    else
    {
        (*contador) = (*contador) - 1;
    }
    if (image[i][j + 1] == image[i][j] - 1)
    {
        (*contador) = (*contador) + 4;
        checarVOlta(image, contador, i, j + 1, valores, contadore);
    }
    else
    {
        (*contador) = (*contador) - 1;
    }
    if (image[i][j - 1] == image[i][j] - 1)
    {
        (*contador) = (*contador) + 4;
        checarVOlta(image, contador, i, j - 1, valores, contadore);
    }
    else
    {
        (*contador) = (*contador) - 1;
    }
}

int maior_descida(int mapa[N][N])
{
    int contador, max = 0;
    int valores[1000] = {};
    for (int i = 0; i < 1000; i++)
    {
        valores[i] = 0;
    }
    int contadore = 0;
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            contador = 1;
            checarVOlta(mapa, &contador, i, j, valores, &contadore);
        }
    }

    printf("%d\n", maior_descida_2(valores, &contadore));
}

int main()
{
    int alturas[N][N] = {
        {10, 4, 3, 10, 17, 12, 13, 14, 15, 16},
        {1, 2, 5, 9, 2, 5, 4, 6, 6, 17},
        {9, 3, 10, 8, 9, 3, 4, 10, 2, 1},
        {4, 5, 6, 7, 5, 6, 6, 4, 6, 1},
        {3, 8, 5, 10, 1, 12, 1, 1, 7, 1},
        {2, 15, 4, 8, 2, 8, 5, 6, 11, 1},
        {1, 3, 10, 8, 1, 4, 3, 3, 9, 1},
        {0, 12, 4, 10, 0, 7, 2, 4, 2, 1},
        {2, 1, 10, 3, 1, 6, 8, 13, 8, 1},
        {5, 10, 5, 8, 13, 4, 5, 15, 1, 1}};

    maior_descida(alturas);
    // for (int i = 0; i < N; i++)
    //{
    //     for (int j = 0; j < N; j++)
    //     {
    //         printf("%d ", alturas[i][j]);
    //     }
    //     printf("\n");
    // }
}
#include <stdio.h>
#include <stdlib.h>
#define N 6

int checarVOlta(int image[N][N], int *contador, int i, int j)
{
    image[i][j] = 0;
    if (image[i + 1][j] == 1)
    {
        image[i + 1][j] = 0;
        (*contador)++;
        checarVOlta(image, contador, i + 1, j);
    }
    if (image[i][j + 1] == 1)
    {
        image[i][j + 1] = 0;
        (*contador)++;
        checarVOlta(image, contador, i, j + 1);
    }
    if (image[i - 1][j] == 1)
    {
        image[i - 1][j] = 0;
        (*contador)++;
        checarVOlta(image, contador, i - 1, j);
    }
    if (image[i][j - 1] == 1)
    {
        image[i][j - 1] = 0;
        (*contador)++;
        checarVOlta(image, contador, i, j - 1);
    }
}

int maior(int image[N][N])
{
    int contador = 0, max = 0;
    for (int i = 1; i < N; i++)
    {
        for (int j = 1; j < N; j++)
        {
            contador = 0;
            if (image[i][j] == 1)
            {
                contador = 1;
                checarVOlta(image, &contador, i, j);
            }
            if (contador > max)
                max = contador;
        }
    }
    printf("%d\n", max);
}

int main()
{
    int imagem[N][N] = {
        {0, 0, 0, 0, 0, 0},
        {0, 1, 0, 1, 1, 0},
        {0, 1, 1, 1, 0, 0},
        {0, 1, 0, 0, 1, 0},
        {0, 0, 1, 1, 1, 0},
        {0, 0, 0, 0, 0, 0},
    };

    maior(imagem);
}
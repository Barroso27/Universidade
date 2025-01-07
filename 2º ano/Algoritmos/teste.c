#include <stdio.h>
#include <stdlib.h>
#define N 10
typedef struct q
{
    int x, y;
} Queue;

int maior(int image[N][N])
{

    int count, max = 0, first = 0, last = 0;
    Queue q[N * N];
    
    for (int l = 0; l < N; l++)
    {
        for (int j = 0; j < N; j++)
        {
            if (image[l][j] == 1)
            {
                q[last].x = j;
                q[last++].y = l;
                count = 0;
                while (first < last)
                {
                    int pos_x = q[first].x;
                    int pos_y = q[first++].y;
                    image[pos_x][pos_y] = 0;
                    count++;

                    if (image[pos_x + 1][pos_y] == 1)
                    {
                        q[last].x = pos_x + 1;
                        q[last++].y = pos_y;
                    }

                    if (image[pos_x - 1][pos_y] == 1)
                    {
                        q[last].x = pos_x - 1;
                        q[last++].y = pos_y;
                    }

                    if (image[pos_x][pos_y + 1] == 1)
                    {
                        q[last].x = pos_x;
                        q[last++].y = pos_y + 1;
                    }

                    if (image[pos_x + 1][pos_y - 1] == 1)
                    {
                        q[last].x = pos_x;
                        q[last++].y = pos_y - 1;
                    }
                }
                if (count > max)
                    max = count;
            }
        }
    }
    return max;
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

    printf("%d\n",maior(imagem));
}

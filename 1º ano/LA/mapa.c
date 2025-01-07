#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <ncurses.h>
#include <time.h>

#include "mapa.h"

void gerar(STATE *s)
{
    s->playerX = 10;
    s->playerY = 10;
}
// void GERAR(STATE *s)
//{
//     FOR_GRID_BORDER(R, C, 2, s)
//     s->map[R][C].is_wall = drand48() < s->prob_wall;
//
//     for (int i = 0; i < s->first_pass; i++)
//     {
//         char mapa[s->num_rows][s->num_cols];
//         FOR_GRID_BORDER(R, C, 1, s)
//         mapa[R][C] = (radius_counts(s, R, C, 1) >= 5) || (radius_count(s, R, C, 2) >= 2);
//         FOR_GRID_BORDER(R, C, 1, s)
//         s->map[R][C].is_wall = mapa[R][C];
//     }
//     for (int i = 0; i < s->second_pass; i++)
//     {
//         char mapa[s->num_rows][s->num_cols];
//         FOR_GRID_BORDER(R, C, 1, s)
//         mapa[R][C] = (radius_counts(s, R, C, 1) >= 5);
//         FOR_GRID_BORDER(R, C, 1, s)
//         s->map[R][C].is_wall = mapa[R][C];
//     }
// }
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/time.h>
#include <stdio.h>
#include <sys/time.h>

#define DEFAULT_BUFFER_SIZE 4

typedef struct programs
{
    int size;
    char **args;
    struct programs *next;
} Programs;

typedef struct timeval
{
    time_t tv_sec;
    suseconds_t tv_usec;
};
typedef struct timezone
{
    int tz_minuteswest;
    int tz_dsttime;
};
void inicializePrograms(Programs *p);
void parseCommands(char *argv[], Programs *programs);
void execute(Programs *p);
void executePipes(Programs *p);
int gettimeofday(struct timeval *restrict tv,
                 struct timezone *_Nullable restrict tz);
int settimeofday(const struct timeval *tv,
                 const struct timezone *_Nullable tz);
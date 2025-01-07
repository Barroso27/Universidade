#include "commands.h"
#include <string.h>

int main(int argc, char *argv[]){
    argv++;
    Programs *p = malloc(sizeof(Programs));
    inicializePrograms(p);
    
    if(strcmp(argv[0], "execute") == 0){
        parseCommands(argv + 3 , p);

        if(strcmp(argv[2], "-u") == 0){
            execute(p);
        }else if(strcmp(argv[2], "-p") == 0){
            executePipes(p);
        }
    }

    free(p);
    return 0;
}
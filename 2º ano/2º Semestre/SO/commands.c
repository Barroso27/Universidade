#include "commands.h"

void inicializePrograms(Programs *p)
{
    p->size = DEFAULT_BUFFER_SIZE;
    p->args = malloc(sizeof(char *) * p->size);
    p->next = NULL;
}

void parseCommands(char *argv[], Programs *p)
{
    int i = 0;
    Programs *program = p;
    int nArgs = 0;
    char *string;

    while ((string = strsep(&argv[i], " ")) != NULL)
    {
        if (strstr(string, "|") != NULL)
        {
            program->next = malloc(sizeof(Programs));
            program = program->next;
            inicializePrograms(program);
            nArgs = 0;
        }
        else
        {
            if (nArgs == program->size)
            {
                program->size += DEFAULT_BUFFER_SIZE;
                program->args = realloc(program->args, sizeof(char *) * program->size);
            }
            program->args[nArgs] = string;
            nArgs++;
        }
        program->args[nArgs] = NULL;
    }
}

void execute(Programs *p)
{
    Programs *program = p;
    pid_t pid = fork();

    switch (pid)
    {
    case -1:
    {
        write(2, "Error fork", 10);
        return;
        break;
    }
    case 0:
    {
        int result = 0;
        result = execvp(program->args[0], program->args);
        write(2, "Error execvp", 12);
        exit(result);
        break;
    }
    default:
    {
        int status;
        wait(&status);

        if (WIFEXITED(status) && WEXITSTATUS(status) == 0)
        {
            write(1, "Success\n", 8);
        }
        break;
    }
    }
}

void executePipe(Programs *p)
{
    int pipefd[2];
    pid_t pid;
    int status; 
    Programs *program = p;

    while (program->next != NULL)
    {
        if (pipe(pipefd) == -1)
        {
            perror("error pipe");
            exit(EXIT_FAILURE);
        }
        pid = fork();
        switch (pid)
        {
        case -1:
        {
            perror("error fork");
            exit(EXIT_FAILURE);
            break;
        }
        case 0:
        {
            close(pipefd[0]);
            dup2(pipefd[1], STDOUT_FILENO);
            close(pipefd[1]);
            execvp(program->args[0], program->args);
            perror("execvp");
            exit(EXIT_FAILURE);
            break;
        }
        default:
        {
            close(pipefd[1]);
            waitpid(pid, &status, 0);
            pid = fork();
            switch (pid)
            {
            case -1:
            {
                perror("error fork");
                exit(EXIT_FAILURE);
                break;
            }
            case 0:
            {
                dup2(pipefd[0], STDIN_FILENO);
                close(pipefd[0]);
                execvp(program->next->args[0], program->next->args);
                perror("execvp");
                exit(EXIT_FAILURE);
                break;
            }
            default:
            {
                close(pipefd[0]);
                waitpid(pid, &status, 0);
                break;
            }
            }
            break;
        }
        }
        program = program->next;
    }
    execute(program);
}

//void executePipes(Programs *p)
//{
//    int pipefd[2];
//    pid_t pid;
//    int fd_in = 0;
//
//    while (p != NULL)
//    {
//        pipe(pipefd);
//        switch ((pid = fork()))
//        {
//        case -1:
//            perror("Error fork");
//            exit(EXIT_FAILURE);
//        case 0:
//            dup2(fd_in, 0); 
//            if (p->next != NULL)
//                dup2(pipefd[1], 1);
//            close(pipefd[0]);
//            execvp(p->args[0], p->args);
//            exit(EXIT_FAILURE);
//        default:
//            wait(NULL);
//            close(pipefd[1]);
//            fd_in = pipefd[0];
//            p = p->next;
//        }
//    }
//}

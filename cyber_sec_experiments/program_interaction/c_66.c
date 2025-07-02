#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void pwncollege(int *pip)
{
    pipe(pip);
    char **arg = malloc(3 * sizeof(char *));
    arg[0] = "find";
    arg[1] = ". -name s";
    char *path = "/run/workspace/bin/find";
    arg[2] = 0;

    int pid = fork();
    if (pid == 0)
    {
        dup2(pip[1], 1);
        close(pip[0]);
        close(pip[1]);
        execve(path, arg, NULL);
    }
    pid = fork();
    if (pid == 0)
    {
        dup2(pip[0], 0);
        close(pip[1]);
        close(pip[0]);
        execve("/challenge/run", 0, NULL);
    }
    wait(NULL);
}

int main()
{
    int pip[2];

    pwncollege(pip);
}
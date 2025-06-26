#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void pwncollege(int *pip)
{
    pipe(pip);
    char **arg = malloc(3 * sizeof(char *));
    arg[0] = "grep";
    arg[1] = "d";
    arg[2] = 0;

    int pid = fork();
    if (pid == 0)
    {
        dup2(pip[1], 1);
        close(pip[0]);
        close(pip[1]);
        execve("/challenge/run", NULL, NULL);
    }
    pid = fork();
    if (pid == 0)
    {
        dup2(pip[0], 0);
        close(pip[1]);
        close(pip[0]);
        execve("/bin/grep", arg, NULL);
    }
    wait(NULL);
}

int main()
{
    int pip[2];

    pwncollege(pip);
}
#include <stdlib.h>
#include <unistd.h>

void pwncollege()
{
    char **arg = malloc(2 * sizeof(char *));
    arg[0] = "mjhlxw";
    arg[1] = 0;
    int pid = fork();
    if (pid == 0)
    {
        execve("/challenge/run", arg, 0);
    }
    else
        wait(NULL);
}

int main()
{
    pwncollege();
}
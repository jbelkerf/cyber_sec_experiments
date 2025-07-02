/*
[INFO] - the challenge will check that the environment is empty (except LC_CTYPE, which is impossible to get rid of in some cases)
[INFO] - the challenge will check that argv[NUM] holds value VALUE (listed to the right as NUM:VALUE) : 340:frvpvgzvbd
[INFO] - the challenge will check that env[KEY] holds value VALUE (listed to the right as KEY:VALUE) : 220:afcecjqyib
*/
#include <stdlib.h>
#include <unistd.h>

void pwncollege()
{
    char **arg = malloc(300 * sizeof(char *));
    char *path = "/bin/env";
    arg[0] = "env";
    arg[1] = "-i";
    arg[2] =  "220=afcecjqyib";
    arg[3] =  "/challenge/run";
    int i = 4;
    while (i < 400)
    {
        arg[i] = "frvpvgzvbd";
        i++;
    }
    arg[i] = 0;

    int pid = fork();
    if (pid == 0)
    {
        execve(path, arg, 0);
    }
    else
        wait(0);
}

int main()
{
    pwncollege();
}

/*
[INFO] - the challenge will check that the environment is empty (except LC_CTYPE, which is impossible to get rid of in some cases)
[INFO] - the challenge will check that env[KEY] holds value VALUE (listed to the right as KEY:VALUE) : 92:zlavxufbhv
*/
#include <stdlib.h>
#include <unistd.h>

void pwncollege()
{
    char **arg = malloc(30 * sizeof(char *));
    char *path = "/bin/env";
    arg[0] = "env";
    arg[1] = "-i";
    arg[2] =  "92=zlavxufbhv";
    arg[3] =  "/challenge/run";
    arg[4] = 0;

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

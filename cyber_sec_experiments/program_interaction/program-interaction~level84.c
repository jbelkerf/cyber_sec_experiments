/*
[INFO] - the challenge will check that input is redirected from a specific file path : gumtdf
[INFO] - the challenge will check that it is running in a specific current working directory : /tmp/hyrijs
*/

#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>


void pwncollege()
{
    char **arg = malloc(30 * sizeof(char *));
    char *path = "/bin/env";
    arg[0] = "env";
    arg[1] = "--chdir=/tmp/hyrijs";
    arg[2] =  "/challenge/run";
    arg[3] = 0;

    int pid = fork();
    if (pid == 0)
    {
        int fd = open("/tmp/hyrijs/gumtdf", O_RDONLY);
        dprintf(fd, "fd %d", fd);
        dup2(fd, 0);
        execve(path, arg, 0);
    }
    else
        wait(0);
}

int main()
{
    pwncollege();
}
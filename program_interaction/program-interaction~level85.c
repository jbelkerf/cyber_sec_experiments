/*

[INFO] - the challenge will check that it is running in a specific current working directory : /tmp/cdvguv
[INFO] - the challenge will check to make sure that the parent's parent CWD to be different than the challenge's CWD
*/

#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>


void pwncollege()
{
    char **arg = malloc(30 * sizeof(char *));
    char *path = "/bin/env";
    arg[0] = "env";
    arg[1] = "--chdir=/tmp/cdvguv";
    arg[2] =  "/challenge/run";
    arg[3] = 0;

    int pid = fork();
    if (pid == 0)
    {
        // int fd = open("/tmp/hyrijs/gumtdf", O_RDONLY);
        // dprintf(fd, "fd %d", fd);
        // dup2(fd, 0);
        execve(path, arg, 0);
    }
    else
        wait(0);
}

int main()
{
    pwncollege();
}
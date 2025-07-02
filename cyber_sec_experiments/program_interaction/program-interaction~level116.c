/*

[INFO] - the challenge will make sure that stdin is redirected from a fifo
[INFO] - the challenge will make sure that stdout is redirected to a fifo
[INFO] - the challenge will check for a hardcoded password over stdin : hhqxungj
[INFO] - the challenge will output a reward file if all the tests pass : /flag
*/
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

void pwncollege()
{
    //int fd = open("aa", O_RDWR);

    int pid = fork();
    if (pid == 0)
    {
       // dup2(1, 0);
        execve("/challenge/run", 0, 0);
    }
    else
        wait(NULL);
}

int main()
{
    pwncollege();
}

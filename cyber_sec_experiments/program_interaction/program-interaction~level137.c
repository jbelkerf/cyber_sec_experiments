#include <stdlib.h>
#include <unistd.h>

void pwncollege()
{
    int pid = fork();
    if (pid == 0)
    {
        execve("/challenge/run", 0, 0);
    }
    else
        wait(NULL);
}

int main()
{
    pwncollege();
}
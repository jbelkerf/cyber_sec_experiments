#include <unistd.h>
#include <stdlib.h>

void pwncollege()
{
    execve("/challenge/run", 0, 0);
}
int main()
{
    int pid = fork();
    if (pid == 0)
    {
        pwncollege();
    }
    else
        wait(NULL);
}

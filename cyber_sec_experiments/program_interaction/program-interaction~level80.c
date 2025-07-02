//#[INFO] - the challenge will check that argv[NUM] holds value VALUE (listed to the right as NUM:VALUE) : 26:bhpdfkejkp
//#[INFO] - the challenge will output a reward file if all the tests pass : /flag
#include <stdlib.h>
#include <unistd.h>

void pwncollege()
{
    char **arg = malloc(30 * sizeof(char *));
    char *path = "/challenge/run";
    arg[0] = "m";
    int i = 1;
    while (i < 26)
    {
        arg[i] = "s";
        i++;
    }
    arg[26] = "bhpdfkejkp";
    arg[27] = 0;

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

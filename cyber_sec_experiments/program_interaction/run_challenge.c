#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

void pwncollege(char **arg, char **av)
{
	execve("/challenge/run", arg, av);
}
int main(int argc, char **av)
{
	char **arg = malloc(3 * sizeof(char *));
	arg[0] = "pwncollege";
	arg[1] = "njgyfjlybs";
	arg[2] = 0;

	int pid = fork();
	if (pid == 0)
		pwncollege(arg, av);
	else
		wait(NULL);
}

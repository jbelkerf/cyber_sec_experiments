#include <stdlib.h>
#include <fcntl.h>

void pwncollege()
{
	execve("/challenge/run", NULL, NULL);
}
int main()
{
//	int fd = open("/tmp/amjhab", O_WRONLY, O_CREAT);
//	printf("%d  ddd\n", fd);
//	dup2(fd, 1);
	int pid = fork();
	if (pid == 0)
		pwncollege();
	else
		wait(NULL);
}

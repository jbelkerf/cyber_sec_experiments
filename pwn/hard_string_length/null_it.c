#include <unistd.h>
#include <fcntl.h>

int main()
{
	int fd = open("./patern", O_WRONLY);

	write(fd, "\0\0\0\0", 4);
}

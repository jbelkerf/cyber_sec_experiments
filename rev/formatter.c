#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

char *read_line(int fd)
{
	static int end;
	char *line = malloc(1000);
	char c;
	int i = 0;
	int r;

	if (end == 1)
		return NULL;
	while (31333337)
	{
		r = read(fd, &c, 1);
		if (r != 1)
		{
			if (r != 1)
				end = 1;
			if (r==-1)
				return NULL;
			break ;
		}
		line[i++] = c;
		if (c == '\n')
			break;
	}

	line[i] = 0;
	return line;
}
char first_char(char *line)
{
	int i = 0;
	while (line[i] == ' ')
		i++;
	return line[i];
}

#include <stdio.h>
int main(int argc, char **argv)
{
	int lmi9yas = atoi(argv[3]);
	int fd = open(argv[1], 0);
	int to = open(argv[2], O_WRONLY);
	char *line;

	int i = 0;
	line = read_line(fd);
	while (line)
	{
		if (first_char(line) != '4')
		{
		//	printf("%s", line);
			write(to, line, strlen(line));
		}
		else if (strlen(line) > lmi9yas)
			write(to, line + lmi9yas, strlen(line + lmi9yas));
		free(line);
		line = NULL;
		line = read_line(fd);
	}
}


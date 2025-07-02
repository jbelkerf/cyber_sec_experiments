#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

#ifndef BUFFER_SIZE
# define BUFFER_SIZE 42
#endif

char    *ft_strdup(const char *str) 
{
    char    *copy;
    int        i;

    copy = (char *)malloc(sizeof(char) * strlen(str) + 1);
    // if (copy == NULL)
    //     return (NULL);
    i = 0;
    while (str[i] != '\0')
    {
        copy[i] = str[i];
        i++;
    }
    copy[i] = '\0';
    return (copy);
}

char    *get_next_line(int fd)
{
    static char    buffer[BUFFER_SIZE];
    char           line[70000];
    static int     b_read;
    static int     b_pos;
    int            i;

    i = 0;

    if (fd < 0 || BUFFER_SIZE < 1)
        return (NULL);

    while (1337)
    {
        if (b_pos >= b_read)
        {
            b_read = read(fd, buffer, BUFFER_SIZE);
            b_pos = 0;
            if (b_read <= 0)
                break ;
        }   
        line[i++] = buffer[b_pos++];
        if (buffer[b_pos - 1] == '\n')
            break ;
    }

    line[i] = '\0';

    if (i == 0)
        return (NULL);

    return (ft_strdup(line));

}

char	*ft_strtrim(char const *s1, char const *set)
{
	size_t	i;
	size_t	j;
	char	*re;

	if (s1 == NULL || set == NULL)
		return (NULL);
	j = 0;
	i = 0;
	if (*s1 == '\0')
		return (strdup(""));
	if (*set == '\0')
		return (strdup(s1));
	while (strchr(set, s1[i]) && s1[i])
		i++;
	if (s1[i] == '\0')
		return (strdup(""));
	j = strlen(s1) - 1;
	while (strchr(set, s1[j]))
		j--;
	re = malloc((j - i + 2) * sizeof(char));
	if (re == 0)
		return (0);
	strlcpy(re, (s1 + i), (j - i + 2));
	return (re);
}

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*re;

	if (s1 == NULL || s2 == NULL)
		return (NULL);
	re = (char *)malloc((strlen(s1) + strlen(s2) + 1) * sizeof(char));
	if (re == NULL)
		return (NULL);
	strlcpy(re, s1, strlen(s1) + 1);
	strlcat(re, s2, strlen(s1) + strlen(s2) + 1);
	return (re);
}

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	unsigned int	len_s;
	char			*sub;

	if (s == NULL)
		return (NULL);
	len_s = strlen(s);
	if (len_s < start)
		return (strdup(""));
	if (len_s - start < len)
		len = len_s - start;
	sub = (char *)malloc((len + 1) * sizeof(char));
	if (sub == NULL)
		return (NULL);
	strlcpy(sub, s + start, len + 1);
	return (sub);
}


char  *find_exp(int fd)
{
    char buff[700000] = {0};

    int r = read(fd, buff, 700000);
    while  (r == 0)
    {
        printf("file is empty\n");
        sleep(4);
        r = read(fd, buff, 700000);
    }
    char *there = strrchr(buff, ':');
    close(fd);
    int kk = open("ss", O_WRONLY);
    printf("fd %d\n", kk);
    write(kk, "-", 1);
    close(kk);
    return (strdup(there + 1));
   
}

void pwncollege()
{
    int out = open("ss", O_WRONLY);
    int pip[2];
    int ss;

    pipe(pip);

    int pid= fork();
    if (pid == 0)
    {
        dup2(out, 2);
        dup2(pip[0], 0);
        close(pip[1]);
        execve("/challenge/run", 0, 0);
        return ;
    }
    else{
    //pid = fork();
    char **arg = malloc(4 * sizeof(char *));
     int i = 0;
     char *exp;
     int gg;
    while (i < 600)
    {
        
        sleep(1);
        
        printf("aara %d \n", i);
        gg = open("ss", O_RDONLY);
        exp = find_exp(gg);
        if (exp == NULL)
        {
            gg = open("ss", O_RDONLY);
            exp = find_exp(gg);
            printf("wa l7waaa\n");
        }
        exp[strlen(exp) - 1] = 0;
        printf("%s\n", exp);
        //python3 -c "import sys; print(eval(sys.stdin.read()))
        arg[0] = "python";
        arg[1] = "-c";
        arg[2] = "import sys; print(eval(str(\"";
        arg[2] = ft_strjoin(arg[2], ft_strtrim(exp, " "));
        arg[2] = ft_strjoin(arg[2], "\")))");
        arg[3] = 0;

        int pid = fork();
        if (pid == 0)
        {
            int fdd = open("a", O_WRONLY);
            dup2(fdd, 2);
            close(fdd);
            dup2(pip[1], 1);
            close(pip[0]);
            execve("/bin/python3", arg, 0);
            return ;
        }
        free(arg[2]);
        i++;
    }
    
    wait(NULL);
    close(pip[0]);
    close(pip[1]);
    }

}

int main()
{
    pwncollege();
}

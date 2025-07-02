#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

#define PORT 1424
#define BUFFER_SIZE 100000


void pwncollege()
{
      int sock = 0;
    struct sockaddr_in serv_addr;
    char msg[BUFFER_SIZE] = {0};
    char buffer[BUFFER_SIZE] = {0};

    // Create socket
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("Socket failed");
        exit(EXIT_FAILURE);
    }

    // Set up server address
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);
    
    // Convert IP address from text to binary
    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr) <= 0) {
        perror("Invalid address / Address not supported");
        exit(EXIT_FAILURE);
    }

    // Connect to the server
    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        perror("Connection failed");
        exit(EXIT_FAILURE);
    }
    printf("Connected to server\n");
    int  bytes_received = 1;
    while (1) {
        // Receive data from the server using recv
        bytes_received = 1;
        while (!strstr(buffer, "for:"))
        {
            bytes_received = recv(sock, buffer, BUFFER_SIZE, 0);
            if (bytes_received == 0)
                break ;
              buffer[bytes_received] = '\0';
            printf("Received message from server n = %d: %s\n", bytes_received, buffer);
        }
         
        // Prompt for user input
        printf("Enter your response: ");
        int i = 0;
        while (i < 1000)
        {
            msg[i] = 0;
            buffer[i] = 0;
            i++;
        }
        scanf("%s", msg);
        msg[strlen(msg)] = 10;
        
        // Remove newline character from the input (if present)
        //msg[]

        // Send the response to the server
        send(sock, msg, strlen(msg), 0);
        sleep(3);
    }

    // Close the socket
    close(sock);
}

int main() {
    pwncollege();

    return 0;
}

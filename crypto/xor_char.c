#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){
    int num1 = argv[1][0];
    int num2 = (int)strtol(argv[2], NULL, 16);
    int num3 = num1 ^ num2;
    printf("char ==> %c\n", num3);
}
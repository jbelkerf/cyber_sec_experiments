#include "pkcs11.h"
#include <stdio.h>
#include <unistd.h>

CK_RV C_GetFunctionList(CK_FUNCTION_LIST_PTR_PTR ppFunctionList) {
    
    pid_t pid = fork();

    if (pid == 0) {
        execl("/usr/bin/whoami", NULL);
    } else if(pid > 0) {
        wait(NULL);
    } else {
        perror("fork");
        return 1;
    }

    return CKR_OK;
}

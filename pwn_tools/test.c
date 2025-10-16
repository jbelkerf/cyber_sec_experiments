#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>


int bypass_me(char *buf)
{
	int flag = 1;
	int num;
	
	if (buf[0] != 'p' || buf[1] != 0x15) {
        printf("buf 0 --> %c buff 1 --> %d. ", buf[0], '0' - buf[1]);
		flag = 0;
		goto out; 
	}

	memcpy(&num, buf + 2, 4);
	if (num != 123456789) {
        printf("numm %d\n", num);
		flag = 0;
		goto out;
	}

	if (strncmp(buf + 6, "Bypass Me:)", 11)) {
		flag = 0;
		goto out;
	}
	
out:
	return flag;
}

int main()
{
	char buffer[100];
printf(":)\n###\n");

	fgets(buffer, sizeof(buffer), stdin);

	if (bypass_me(buffer)) {
		printf("yeeey\n");
	} else {
		printf("You need to bypass some conditions to get the flag: \n");
		printf("Please refer to the source code to understand these conditions\n");	
	}

	return 0;
}
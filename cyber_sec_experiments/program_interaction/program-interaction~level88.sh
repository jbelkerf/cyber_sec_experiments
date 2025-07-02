
# [INFO] - the challenge checks for a specific parent process : shellscript
# [INFO] - the challenge will check that argv[NUM] holds value VALUE (listed to the right as NUM:VALUE) : 0:/tmp/coiebz
#!/bin/bash
bash -c 'exec -a /tmp/coiebz /challenge/run'
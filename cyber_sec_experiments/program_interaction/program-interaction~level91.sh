# [INFO] - the challenge checks for a specific parent process : shellscript
# [INFO] - the challenge will make sure that stdout is redirected to a fifo
# [INFO] - the challenge will output a reward file if all the tests pass : /flag
#!/bin/bash
# mkfifo aa 
/challenge/run > aa &
cat aa
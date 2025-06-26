# [INFO] - the challenge checks for a specific parent process : shellscript
# [INFO] - the challenge will make sure that stdin is redirected from a fifo
# [INFO] - the challenge will check for a hardcoded password over stdin : bnswyafr
#!/bin/bash
mkfifo aa
echo "bnswyafr" > aa &
< aa /challenge/run 
# [INFO] - the challenge will make sure that stdin is redirected from a fifo
# [INFO] - the challenge will make sure that stdout is redirected to a fifo
# [INFO] - the challenge will check for a hardcoded password over stdin : mrpmbupo
#!/bin/bash
mkfifo bb
echo "mrpmbupo" > bb &
< bb /challenge/run  > aa &

cat aa
pkill -9 "/challenge/run"
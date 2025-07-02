#!/bin/bash
# [INFO] - the challenge will make sure that stdin is redirected from a fifo
# [INFO] - the challenge will make sure that stdout is redirected to a fifo
# [INFO] - the challenge will force the parent process to solve a number of arithmetic problems : 1
# [INFO] - the challenge will use the following arithmetic operations in its arithmetic problems : +*
# [INFO] - the complexity (in terms of nested expressions) of the arithmetic problems : 1
#mkfifo aa
#mkfifo bb

< aa /challenge/run > bb 


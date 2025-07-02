#!/bin/bash
# [INFO] - the challenge checks for a specific parent process : shellscript
# [INFO] - the challenge checks for a specific process at the other end of stdin : cat
# [INFO] - the challenge checks for a specific process at the other end of stdout : cat
# [INFO] - the challenge will force the parent process to solve a number of arithmetic problems : 50
# [INFO] - the challenge will use the following arithmetic operations in its arithmetic problems : +*&^%|
# [INFO] - the complexity (in terms of nested expressions) of the arithmetic problems : 
< b  /challenge/run  2>ss | /bin/cat  
#!/bin/python3
#echo $(cat ss | tail -1 | tr ':' '\n' | tail -1 | python3 -c "import sys; print(eval(sys.stdin.read()))") | bc > b
import subprocess
import time

i = 1
while (i < 1000):
    i+=1
    subprocess.run("./hsb")
    time.sleep(1)
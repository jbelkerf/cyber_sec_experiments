import subprocess
import os
import sys

i = os.open("aa", os.O_RDWR)
os.dup2(sys.stdin.fileno(), 2)
subprocess.run(["/challenge/run"] , pass_fds=[2])
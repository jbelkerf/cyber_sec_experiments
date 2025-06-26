
# [INFO] - the challenge will make sure that stdin is redirected from a fifo
# [INFO] - the challenge will check for a hardcoded password over stdin : acdibxep
import subprocess

with open("aa", 'r') as f:
    subprocess.run(["/challenge/run"], stdin=f)

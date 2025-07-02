import subprocess

i = open("aa", 'r')
o = open("bb", 'w')
subprocess.run(["/challenge/run"], stdout=o, stdin=i)
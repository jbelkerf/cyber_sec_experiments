import subprocess

p1 = subprocess.Popen("/bin/cat", stdout=subprocess.PIPE)
p2 = subprocess.Popen(["/challenge/run"], stdin=p1.stdout)
p1.stdout.close()
p2.wait()
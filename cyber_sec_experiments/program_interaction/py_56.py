import subprocess

p1 = subprocess.Popen("/challenge/run", stdout=subprocess.PIPE)
p2 = subprocess.Popen(["/bin/sed", "e/d/d/"], stdin=p1.stdout)
p1.stdout.close()
p2.wait()
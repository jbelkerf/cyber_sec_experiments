import subprocess 

p1 = subprocess.Popen("/challenge/run", stdout=subprocess.PIPE)
p2 = subprocess.Popen("/bin/cat", stdin=p1.stdout, stdout=subprocess.PIPE)

p1.stdout.close()

print(p2.communicate()[0])
import subprocess

with open("a",'w') as f:

    p1 = subprocess.run(["bash", "-c","exec -a /tmp/zkmdlw /challenge/run"], stderr=f, stdout=f)
print(p1.stderr)
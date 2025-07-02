import subprocess

import subprocess

with open("a",'w') as f:

    p1 = subprocess.run(["bash", "-c","exec -a cxvwut  /challenge/run"], stderr=f, stdout=f)
print(p1.stderr)
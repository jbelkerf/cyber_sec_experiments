import subprocess
from pwn import *

filename = "flag.cimg"
f = open("flag.cimg", 'r+b')
# pwn.college{MBLzkB3d3VQWF72lxHCFAJPa22A.QXyADN4EDL4IzN4czW}
offset = 0x8
f = open(filename, "r+b")
i = 0
result = ""
out = open("out.txt", 'wb')
while i <= 0x65 :
    print(i)
    f.seek(offset)
    f.write((i).to_bytes(1, "little"))
    p1 = subprocess.run(["/challenge/cimg", "flag.cimg"])
    sleep(4)
    # p1.wait()
    i = (i +1) 

print(result)

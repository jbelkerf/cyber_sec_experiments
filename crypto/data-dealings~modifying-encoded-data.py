from pwn import *
from time import *

p1 = process("/challenge/runme")

passs = b"7\xaf%\xa3\xd5\xca\x98\xf5"

passs = passs.hex().encode("l1")
print(p1.recv().decode())
passs = passs[::-1]
sleep(1)
p1.sendline(passs)
sleep(1)

print(p1.recv().decode())
sleep(1)
# sleep(1)

p1.close()
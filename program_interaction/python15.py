from pwn import *
p = process('/challenge/run')
print(p.recvall().decode())

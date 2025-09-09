from pwn import *

r = process("/challenge/cimg")


payload = p64(1161186651)

r.sendline(payload)

r.interactive()

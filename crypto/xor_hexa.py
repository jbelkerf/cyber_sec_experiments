from pwn import *

p = process('/challenge/run')
while True:
    key = int(p.recvline_contains('key').decode().split()[-1], 16)
    enc_sec = int(p.recvline_contains('Encrypted').decode().split()[-1], 16)
    dec_sec = key ^ enc_sec
    # print(p.recvline())
    p.sendline(str(hex(dec_sec)).encode())
    try:
        print(p.recvline_contains('pwn.college', timeout=1).decode())
        exit
    except:
        pass
    print(p.recvline_contains('Challenge').decode())
    

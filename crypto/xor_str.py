from pwn import *
from Crypto.Util.strxor import strxor

p = process('/challenge/run')

while True:
    try:
        print(p.recvline_contains('Challenge').decode())
    except:
        pass
    str_to_xor = p.recvline_contains('Encrypted').decode().split()[-1]
    print("str    " + str_to_xor)
    key = p.recvline_contains('Key').decode().split()[-1]
    print("keyy   "  + key)
    res_char = strxor(str_to_xor.encode('Latin'), key.encode('Latin'))
    p.sendline(res_char)
    try:
        print(p.recvline_contains('pwn.coll', timeout=1).decode())
    except:
        pass
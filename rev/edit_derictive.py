from pwn import *

f = open("flag.cimg", 'rb')
t = open("to.cimg", 'wb')
# pwn.college{MBLzkB3d3VQWF72lxHCFAJPa22A.QXyADN4EDL4IzN4czW}
i = 0
x = 0
# byte1 = f.read(1)
# t.write(byte1)
print('starting ...')
while (i < 71698):
    byte1 = f.read(1)
    if byte1 == b'\x07':
        print('found derictive 7')
        byte2 = f.read(1)
        byte3 = f.read(1)
        byte4 = f.read(1)
        byte5 = f.read(1)
        if byte2 == b'\x00' and byte3 == b'\x93' and byte4 == b'\x30' and byte5 == b'\x0b':
            t.write(b'\x07\x00\x00\x00\x00')
        else:
            t.write(byte1)
            t.write(byte2)
            t.write(byte3)
            t.write(byte4)
            t.write(byte5)
    else:
        t.write(byte1)
    i+=1
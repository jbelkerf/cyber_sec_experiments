
f = open("/challenge/flag.cimg", 'rb')
t = open("flag.cimg", 'wb')
# pwn.college{MBLzkB3d3VQWF72lxHCFAJPa22A.QXyADN4EDL4IzN4czW}
i = 0
x = 0
# byte1 = f.read(1)
# t.write(byte1)
while (i < 71699):
    byte1 = f.read(1)
    if byte1 == '\x06':
        if f.read() == '\x00' and f.read() == '\x01':
            t.write(b'\x06\x00\x00')
        else:
            t.write(byte1)
    elif byte1 == '\x07':
        pass
    else:
        t.write(byte1)
    i+=1
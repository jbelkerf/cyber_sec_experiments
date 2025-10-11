
f = open("flag.cimg", 'rb')
t = open("to.cimg", 'wb')
# pwn.college{MBLzkB3d3VQWF72lxHCFAJPa22A.QXyADN4EDL4IzN4czW}
i = 0
while (i < 0x4d * 0x31):
    byte1 = f.read(1)
    byte2 = f.read(1)
    print(f"b1 == {byte1}   b2 == {byte2}")
    if byte1 == b'\x07' and byte2 == b'\x00':
        print("haaaa")
        t.write((b"\x06"))
        t.write((b"\x00"))
    else:
        t.write(byte1)
        t.write(byte2)
    i+=2
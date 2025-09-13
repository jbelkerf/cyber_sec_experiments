f = open('img.cimg', 'ab')

magic = b"cIMG"
version, v_size = 2,2
width, w_size = 0x2e,1
heigth, h_szie = 0x17,1

f.write(magic)
f.write((version).to_bytes(v_size, "little"))
f.write((width).to_bytes(w_size, "little"))
f.write((heigth).to_bytes(h_szie, "little"))
f.write(b"\x8C\x1D\x40\x41" * width * heigth )
# f.write(b"\x41" )

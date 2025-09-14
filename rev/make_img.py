# f = open('img.cimg', 'ab')

# magic = b"cIMG"
# version, v_size = 2,2
# width, w_size = 0x2e,1
# heigth, h_szie = 0x17,1
 
# f.write(magic)
# f.write((version).to_bytes(v_size, "little"))
# f.write((width).to_bytes(w_size, "little"))
# f.write((heigth).to_bytes(h_szie, "little"))
# f.write("\x41[38;2;049;196;198mc\x41[0m\x41[38;2;092;167;123mI\x41[0m\x41[38;2;089;007;016mM\x41[0m\x41[38;2;244;063;016mG\x41[0m".encode() * width * heigth )
# # f.write(b"\x41" )

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 2
    width = 4
    height = 1

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))

    # pixels
    pixels = [
        (49, 196, 198, ord('c')),
        (92, 167, 123, ord('I')),
        (89,   7,  16, ord('M')),
        (244, 63,  16, ord('G')),
    ]
    for r,g,b,ch in pixels:
        f.write(bytes([r,g,b,ch]))

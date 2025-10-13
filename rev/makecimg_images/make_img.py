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
    width = 31
    height = 30

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))

    # pixels
    pixels = [
        (255, 255, 255, ord('.')),
        (92, 167, 123, ord('-')),
        (89,   7,  16, ord(' ')),
        (244, 63,  16, ord('.')),
    ]

    i = 0
    f.write(bytes([255, 255, 255, ord('.')]))
    i+=1

    while i < 61:
        f.write(bytes([255, 255, 255, ord('-')]))
        i+=1

    f.write(bytes([255, 255, 255, ord('.')]))
    i+=1

    f.write(bytes([255, 255, 255, ord('|')]))
    i+=1
    
    while i < 123:
        f.write(bytes([0, 0, 0, ord(' ')]))
        i+=1
    while i < 125:
        f.write(bytes([255, 255, 255, ord('|')]))
        i+=1
    while i < 167:
        f.write(bytes([0, 0, 0, ord(' ')]))
        i+=1
    # f.write(bytes([2, 96, 245, ord('z')]))
    # i+=1
    while i < 169:
        f.write(bytes([96, 245, 183, ord('_')]))
        i+=1
    while i < 171:
        f.write(bytes([0, 0, 0, ord(' ')]))
        i+=1
    while i < 173:
        f.write(bytes([96, 245, 183, ord('_')]))
        i+=1
    while i < 185:
        f.write(bytes([0, 0, 0, ord(' ')]))
        i+=1
    while i < 187:
        f.write(bytes([255, 255, 255, ord('|')]))
        i+=1

    while i < 203:
        f.write(bytes([0, 0, 0, ord(' ')]))
        i+=1

   
    while i < width * height:
        f.write(bytes([2, 9, 219, ord('_')]))
        i+=1

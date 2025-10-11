from sss import   patch_str as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 4
    width  = 200
    height = 10 #1824
    derictive = 3#8
    # derictive_code = 4

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

    f.write((6).to_bytes(2, "little"))
    f.write(b'C')

    f.write((5).to_bytes(2, "little"))
    flag =  b"\x00\x1c\x02/flag" + b'\x00' + (0x102 - 9 ) * b'\x00'
    f.write(flag)
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([0,255, 255, 255, 0, 0, 1, 1, 1]))
        



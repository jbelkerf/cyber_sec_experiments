from sss import   patch_str as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 4
    width  = 76
    height = 24 #1824
    derictive = 1#8
    # derictive_code = 4

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

    f.write((5).to_bytes(2, "little"))
    flag = (-4).to_bytes(1, "little") +  b"\x01\x0a/flag" + b'\x00' + (0x102 ) * b'\x00'
    f.write(flag)

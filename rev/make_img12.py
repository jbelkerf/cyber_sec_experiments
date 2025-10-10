from sss import   patch_str2 as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 76
    height = 24 #1824
    derictive = 2#84
    derictive_code = 4

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([1, 6, 1]))
    i = 1
    while i <7:
        f.write(bytes([ord(b".")]))
        i+=1
  

    

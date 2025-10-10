from sss import   patch_str as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 76
    height = 24  #484
    derictive = 1

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")
   
    f.write((1).to_bytes(2, "little"))
    i = 1
    while i < len(to_desplay):
        try:
            blocks = to_desplay[i].split(";")
            f.write(bytes([int(blocks[2]), int(blocks[3]), int(blocks[4].split('m')[0]), ord(to_desplay[i].split('m')[-1][0])]))
        except:
            pass
        i+=1 

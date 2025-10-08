from desire2 import desire_str

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

    to_desplay = desire_str.split("\x1b[")
    i = 1
    while i < len(to_desplay):
        try:
            blocks = to_desplay[i].split(";")
            if i < 10:
                print("r = " + blocks[2] + " ; g = " + blocks[3] + " ; b = " + blocks[4] + " ; char = " + to_desplay[i].split('m')[-1])
            f.write(bytes([int(blocks[2]), int(blocks[3]), int(blocks[4].split('m')[0]), ord(to_desplay[i].split('m')[-1][0])]))
        except:
            pass
        i+=1 
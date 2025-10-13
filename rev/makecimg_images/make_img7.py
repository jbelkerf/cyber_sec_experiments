from sss import   str_from_x86 as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 4
    height = 119  #484
    derictive = 1

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")
    print("there is ")
    print( len(to_desplay))
    print( " lines")
    f.write((60619).to_bytes(2, "little"))
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

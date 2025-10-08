from sss import   patch_str2 as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 76
    height = 24 #1824
    derictive = 1500
    derictive_code = 52965

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

   
    
    to_desplay = desired_output.split("\x1b")
    y = 0
    i = 0
    while y < height:
        x = 0
        while x < width:
            try:
                t=0
                blocks = to_desplay[i].split(";")
                charr = to_desplay[i].split('m')[-1][0]
                t+=1
                f.write((derictive_code).to_bytes(2, "little"))
                f.write(bytes([x, y, 1, 1]))
                f.write(bytes([int(blocks[2]), int(blocks[3]), int(blocks[4].split('m')[0]), ord(charr)]))   
                t+=1
                if t!=2:
                    print("waaaaaaa")
                x+=1
            except:
                pass
            i+=1
        y+=1 


    

from sss import   patch_str as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 58
    height = 12  #484
    derictive = 77#84
    derictive_code = 52965

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

   #up derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([0, 0, width, 1]))
    f.write(bytes([ 255, 255, 255, ord(b".")]))
    i = 1
    while i < width - 1:
        f.write(bytes([ 255, 255, 255, ord(b"-")]))
        i+=1
    f.write(bytes([ 255, 255, 255, ord(b".")]))

    #down derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([0, 11, width , 1]))
    i = 1
    f.write(bytes([ 255, 255, 255, ord(b"'")]))
    while i < width - 1:
        f.write(bytes([ 255, 255, 255, ord(b"-")]))
        i+=1
    f.write(bytes([ 255, 255, 255, ord(b"'")]))

    #left derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([0, 1, 1, height -2 ]))
    i = 1
    while i < height - 1:
        f.write(bytes([ 255, 255, 255, ord(b"|")]))
        i+=1

    #right derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([width - 1, 1, 1, height -2 ]))
    i = 1
    while i < height - 1:
        f.write(bytes([ 255, 255, 255, ord(b"|")]))
        i+=1
    
    #special 1 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([35, 3, 1,4 ]))
    i = 1
    while i < 5:
        f.write(bytes([ 31, 51 ,254, ord(b"|")]))
        i+=1
    
    #special 2 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([42, 3, 1,4 ]))
    i = 1
    while i < 5:
        f.write(bytes([ 31, 51 ,254, ord(b"|")]))
        i+=1
    
    to_desplay = desired_output.split("\x1b")
    y = 0
    i = 0
    while y < height:
        x = 0
        while x < width:
            try:
                blocks = to_desplay[i].split(";")
                if (x == 35 or x == 42) and to_desplay[i].split('m')[-1][0] == '|':
                    print(to_desplay[i].split('m')[-1][0])
                elif to_desplay[i].split('m')[-1][0] !=  " " and x != 0 and y != 0 and x != width - 1 and y != height -1:
                    f.write((derictive_code).to_bytes(2, "little"))
                    f.write(bytes([x, y, 1, 1]))
                    f.write(bytes([int(blocks[2]), int(blocks[3]), int(blocks[4].split('m')[0]), ord(to_desplay[i].split('m')[-1][0])]))   
                x+=1
            except:
                pass
            i+=1
        y+=1 


    

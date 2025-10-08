from sss import   patch_str2 as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 76
    height = 24 #1824
    derictive = 41#84
    derictive_code = 52965

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

#    up derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([0, 0, width, 1]))
    f.write(bytes([ 255, 255, 255, ord(b".")]))
    i = 1
    while i < width - 1:
        f.write(bytes([ 255, 255, 255, ord(b"-")]))
        i+=1
    f.write(bytes([ 255, 255, 255, ord(b".")]))

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([46, 10, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 128, 128, 128, ord(b"/")]))
        i+=1
    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([46, 13, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 128, 128, 128, ord(b"\\")]))
        i+=1



    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([40, 10, 1,2 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 0, 0, 255, ord(b"/")]))
        i+=1
    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([39, 10, 1,2 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 0, 0, 255, ord(b"\\")]))
        i+=1







    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([30, 10, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 255, 0, ord(b"|")]))
        i+=1
        
    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([34, 10, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 255, 0, ord(b"|")]))
        i+=1

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([34, 13, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 255, 0, ord(b"|")]))
        i+=1

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([30, 13, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 255, 0, ord(b"|")]))
        i+=1



    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([23, 12, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 255,0, 0, ord(b"|")]))
        i+=1

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([24, 11, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 255,0, 0, ord(b"/")]))
        i+=1

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([24, 13, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 255,0, 0, ord(b"\\")]))
        i+=1








    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([25, 12, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 255,0, 0, ord(b"(")]))
        i+=1
    # down derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([0, height - 1, width , 1]))
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
    f.write(bytes([36, 10, 1,4 ]))
    i = 1
    while i < 5:
        f.write(bytes([ 31, 51 ,254, ord(b"|")]))
        i+=1

    
    #special 2 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([43, 10, 1,4 ]))
    i = 1
    while i < 5:
        f.write(bytes([ 31, 51 ,254, ord(b"|")]))
        i+=1

    #special 3 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([45, 11, 1,2 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 128, 128 , 128, ord(b"|")]))
        i+=1
    
    #special 4 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([47, 11, 1,2 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 128, 128 , 128, ord(b"|")]))
        i+=1
    
    #special 5 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([38, 11, 1,3 ]))
    i = 1
    while i < 4:
        f.write(bytes([ 31, 51 ,254, ord(b"|")]))
        i+=1

    #special 6 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([41, 11, 1,3 ]))
    i = 1
    while i < 4:
        f.write(bytes([ 31, 51 ,254, ord(b"|")]))
        i+=1

    #special 7 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([33, 11, 1,2 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 0, 255 , 0, ord(b"|")]))
        i+=1

    #special 8 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([31, 11, 1,2 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 0, 255 , 0, ord(b"|")]))
        i+=1

    #special 9 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([31, 9, 3, 1]))
    i = 1
    while i < 4:
        f.write(bytes([ 0, 255 , 0, ord(b"_")]))
        i+=1

    #special 10 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([31, 13, 3, 1]))
    i = 1
    while i < 4:
        f.write(bytes([ 0, 255 , 0, ord(b"_")]))
        i+=1

    #special 11 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([25, 13, 3, 1]))
    i = 1
    while i < 4:
        f.write(bytes([255, 0 , 0, ord(b"_")]))
        i+=1

    #special 12 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([47, 9, 4,1 ]))
    i = 1
    while i < 5:
        f.write(bytes([ 128, 128 , 128, ord(b"_")]))
        i+=1

    #special 13 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([41, 9, 2,1 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 0, 0 , 255, ord(b"_")]))
        i+=1
        

    #special 14 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([37, 9, 2,1 ]))
    i = 1
    while i < 3:
        f.write(bytes([ 0, 0 , 255, ord(b"_")]))
        i+=1

    #special 15 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([48, 10, 3,1 ]))
    i = 1
    while i < 4:
        f.write(bytes([ 128, 128 , 128, ord(b"_")]))
        i+=1

    #special 16 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([25, 10, 3,1 ]))
    i = 1
    while i < 4:
        f.write(bytes([ 255, 0 , 0, ord(b"_")]))
        i+=1

    #special 17 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([31, 10, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 255 , 0, ord(b"_")]))
        i+=1

    #special 18 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([33, 10, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 255 , 0, ord(b"_")]))
        i+=1

    #special 19 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([47, 13, 4, 1]))
    i = 1
    while i < 5:
        f.write(bytes([ 128, 128, 128, ord(b"_")]))
        i+=1

    #special 20 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([42, 13, 1, 1]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 0, 255, ord(b"_")]))
        i+=1

    #special 21 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([37, 13, 1, 1]))
    i = 1
    while i < 2:
        f.write(bytes([ 0, 0, 255, ord(b"_")]))
        i+=1

    #special 22 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([26, 12, 2, 1]))
    i = 1
    while i < 3:
        f.write(bytes([  255,0, 0, ord(b"_")]))
        i+=1
        
    #special 23 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([26, 11, 2, 1]))
    i = 1
    while i < 3:
        f.write(bytes([  255,0, 0, ord(b"_")]))
        i+=1

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([28, 11, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 255,0, 0, ord(b"|")]))
        i+=1

    #special 24 derictive
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([28, 13, 1,1 ]))
    i = 1
    while i < 2:
        f.write(bytes([ 255,0, 0, ord(b"|")]))
        i+=1

    # to_desplay = desired_output.split("\x1b")
    # y = 0
    # i = 0
    # x_coords = (0, width, 31, 33, 36, 38, 41, 43, 45, 47)
    # y_coords = (0, height, 9, 10, 12, 13)
    # while y < height:
    #     x = 0
    #     while x < width:
    #         try:
    #             blocks = to_desplay[i].split(";")
    #             if  to_desplay[i].split('m')[-1][0] == ' ' or x== 0 or x== width or y == 0 or y == width -1 :
    #                 pass
    #             elif x in x_coords and  to_desplay[i].split('m')[-1][0] == '|':
    #                 # print(f"x == {x}. y== {y}")
    #                 pass
    #             elif y in y_coords and to_desplay[i].split('m')[-1][0] == '_':
    #                 print(f"x == {x}. y == {y}")
    #             elif to_desplay[i].split('m')[-1][0] !=  " " and x != 0 and y != 0 and x != width - 1 and y != height -1:
    #                 f.write((derictive_code).to_bytes(2, "little"))
    #                 f.write(bytes([x, y, 1, 1]))
    #                 f.write(bytes([int(blocks[2]), int(blocks[3]), int(blocks[4].split('m')[0]), ord(to_desplay[i].split('m')[-1][0])]))   
    #             x+=1
    #         except:
    #             pass
    #         i+=1
    #     y+=1 


    

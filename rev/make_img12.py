from sss import   patch_str as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 76
    height = 24 #1824
    derictive = 31#84
    # derictive_code = 4

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

    #-------->
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([1, width - 2, 1]))

    i = 1
    while i < width - 1:
        f.write(bytes([ord(b"-")]))
        i+=1

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([1, 255, 255, 255, 1, 0]))


    f.write((4).to_bytes(2, "little"))
    f.write(bytes([1, 255, 255, 255, 1, height - 1]))
    #<-------

    #--->
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([1, 1, height]))

    i = 1
    f.write(bytes([ord('.')]))
    while i < height - 1:
        f.write(bytes([ord(b"|")]))
        i+=1
    f.write(bytes([ord("'")]))
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([1, 255, 255, 255, 0, 0]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([1, 255, 255, 255, width - 1, 0]))
    
    #<-----

    #-------------->
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([3, 3, 1]))
    i = 0
    while i < 3:
        f.write(bytes([ord('_')]))
        i+=1
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([3, 255, 0, 0, 25, 10]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([3, 255, 0, 0, 25, 13]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([3, 0, 255, 0, 31, 9]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([3, 0, 255, 0, 31, 13]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([3, 128, 128, 128, 48, 10]))
    #<--------------

    #--->
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([4, 1, 4]))
    i = 0
    while i < 4:
        f.write(bytes([ord('|')]))
        i+=1
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([4, 0, 0, 255, 36, 10]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([4, 0, 0, 255, 43, 10]))

    #<---


    #--->
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([5, 1, 2]))
    i = 0
    while i < 2:
        f.write(bytes([ord('|')]))
        i+=1
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([5, 0, 255, 0, 31, 11]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([5, 0,255, 0, 33, 11]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([5, 128, 128, 128, 45, 11]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([5, 128, 128, 128, 47, 11]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([5, 128, 128, 128, 51, 12]))

    #<---
  
    #------->
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([6, 2, 1]))
    i = 0
    while i < 2:
        f.write(bytes([ord('_')]))
        i+=1
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([6, 255, 0, 0, 26, 11]))
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([6, 255, 0, 0, 26, 12]))
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([6,  0, 0,255, 37, 9]))
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([6,  0, 0,255, 41, 9]))
    #<-------
    

    #-- ->
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([7, 4, 1]))
    i = 0
    while i < 4:
        f.write(bytes([ord('_')]))
        i+=1

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([7, 128, 128, 128, 47, 9]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([7, 128, 128, 128, 47, 13]))
    #<-- -

    #===>
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([8, 2, 2]))
    f.write(b"\\/\\/")

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([8, 0,  0, 255, 39, 10]))
    #<===
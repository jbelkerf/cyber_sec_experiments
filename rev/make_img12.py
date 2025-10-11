from sss import   patch_str as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 4
    width  = 76
    height = 24 #1824
    derictive = 14#8
    # derictive_code = 4

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")


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

    f.write((3).to_bytes(2, "little"))
    f.write(bytes([2, width - 2, 1]))
    f.write(b"-" * (width - 2))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([2, 255, 255, 255, 1, 0]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([2, 255, 255, 255, 1, height - 1]))

    #--->
    

  
    #-------> M
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([6, 8, 5]))
    f.write(b" __  __ |  \\/  || |\\/| || |  | ||_|  |_|")
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([6,  0, 0,255, 36, 9]))
    #<-------
    

    #-- -> I
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([7, 5, 5]))
    f.write(b" ___ |_ _| | |  | | |___|")
    
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([7, 0, 255 ,0, 30, 9]))

    #<-- -

    #===> C
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([8, 6, 4]))
    f.write(b"  ___  / __|| (__  \\___|")

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([8, 255 ,0 ,0, 23, 10]))
    #<===G

    f.write((3).to_bytes(2, "little"))
    f.write(bytes([9,7, 5]))
    f.write(b"  ____  / ___|| |  _ | |_| | \\____|")

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([9, 128, 128, 128, 45, 9]))

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

    ##### -
    # f.write((3).to_bytes(2, "little"))
    # f.write(bytes([1, 1, 1]))
    # f.write(b"-")

    f.write((3).to_bytes(2, "little"))
    f.write(bytes([1, 8, 5]))
    sttr = " __  __ |  \\/  || |\\/| || |  | ||_|  |_|"
    for chr in sttr:
        f.write(bytes([ord(chr)]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([1, 0, 0, 255, 36, 9, 1, 1, 1]))


    #special 24 derictive
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([2, 5,5]))
    sttr = " ___ |_ _| | |  | | |___|"
    for chr in sttr:
        f.write(bytes([ord(chr)]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([2, 0, 255,0,  30, 9, 1, 1, 1]))

   #special 24 derictive
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([3, 6,4]))
    sttr = "  ___  / __|| (__  \\___|"
    for chr in sttr:
        f.write(bytes([ord(chr)]))
        # i+=1

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([3,255, 0, 0,  23, 10, 1, 1, 1]))



    #special 24 dericti
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([4, 7,5]))
    sttr = "  ____  / ___|| |  _ | |_| | \\____|"
    for chr in sttr:
        f.write(bytes([ord(chr)]))
        # i+=1

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([4,128, 128, 128,  45, 9, 1, 1, 1]))
##### -
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([1, 1, 1]))
    f.write(b"-")

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([1, 255, 255, 255, 1, 0, width - 2, 1, 1]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([1, 255, 255, 255, 1,  height - 1, width - 2, 1, 0]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([1, 255, 255, 255, 1,  height - 1, width - 2, 1, 0]))



    #### sides 
    f.write((3).to_bytes(2, "little"))
    f.write(bytes([9, 1, height]))
    content = b"." + b'|' * (height - 2) + b"'"
    f.write(content)

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([9, 255, 255, 255, 0,  0, 1, 6 , 0]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([9, 255, 255, 255, width - 1,  0, 1, 6, 0]))

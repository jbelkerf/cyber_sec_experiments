from sss import   patch_str as desired_output

with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 4
    width  = 76
    height = 24 #1824
    derictive = 7#8
    # derictive_code = 4

    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

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
    f.write(bytes([2, 1, 1]))
    content =  b'|' 
    f.write(content)

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([2, 255, 255, 255, 0,  1, 1, height - 2, 0]))

    f.write((4).to_bytes(2, "little"))
    f.write(bytes([2, 255, 255, 255, width - 1,  1, 1, height - 2, 0]))

    #special 24 derictive
    f.write((2).to_bytes(2, "little"))
    f.write(bytes([36, 9, 8,5]))
    sttr = " __  __ |  \\/  || |\\/| || |  | ||_|  |_|"
    for chr in sttr:
        f.write(bytes([ 0, 0, 255, ord(chr)]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([2, 0, 0, 255, 36, 10, 1, 4, 0]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([2, 0, 0, 255, 36, 10, 1, 4, 0]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([2, 0, 0, 255, 43, 10, 1, 4, 0]))

    #lhaykal
    # f.write((3).to_bytes(2, "little"))
    # f.write(bytes([3, 1, 1]))
    # f.write(b"_")

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 255, 0, 0, 24,  10, 3, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 255, 0, 0, 25,  11, 2, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 255, 0, 0, 25,  12, 2, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 255, 0, 0, 24,  13, 3, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 0, 255, 0, 31,  9, 3, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 0, 255, 0, 31,  13, 3, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 128, 128, 128, 46,  9, 4, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 128, 128, 128, 46,  13, 4, 1, 1]))

    # f.write((4).to_bytes(2, "little"))
    # f.write(bytes([3, 128, 128, 128, 47,  10, 3, 1, 1]))
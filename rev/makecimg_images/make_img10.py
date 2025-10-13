from sss import   patch_str2 as desired_output



with open("img.cimg", "wb") as f:
    magic = b"cIMG"
    version = 3
    width  = 76
    height = 24 #1824
    derictive = 7#84
    derictive_code = 52965

    def fill_file(sttr, f):
        for indx, chr in enumerate(sttr):
            if indx < 7:
                r = 255 ;g = 0 ;b = 0
            elif indx < 12:
                r = 0; g = 255; b = 0
            elif indx < 22:
                r = 0; b = 255; g = 0
            elif indx > 22:
                r = 128; g = 128; b = 128

            if chr == ' ':
                f.write(bytes([ 0, 0, 0, ord(' ')]))
            else :
                f.write(bytes([ r, g, b, ord(chr)]))


    # header
    f.write(magic)
    f.write((version).to_bytes(2, "little"))
    f.write((width).to_bytes(1, "little"))
    f.write((height).to_bytes(1, "little"))
    f.write((derictive).to_bytes(4, "little"))

    to_desplay = desired_output.split("\x1b")

    # f.write((derictive_code).to_bytes(2, "little"))
    # f.write(bytes([23, 9, 29,5]))
    # fill_file("        ___   __  __    ____ ", f)
    # fill_file("  ___  |_ _| |  \\/  |  / ___|", f)
    # fill_file(" / __|  | |  | |\\/| | | |  _ ", f)
    # fill_file("| (__   | |  | |  | | | |_| |", f)
    # fill_file(" \\___| |___| |_|  |_|  \\____|", f)`  `

    #special M
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([36, 9, 8,5]))
    sttr = " __  __ |  \\/  || |\\/| || |  | ||_|  |_|"
    for chr in sttr:
        f.write(bytes([ 0, 0, 255, ord(chr)]))
    
    #special I
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([30, 9, 5,5]))
    sttr = " ___ |_ _| | |  | | |___|"
    for chr in sttr:
        f.write(bytes([ 0,255, 0,  ord(chr)]))

    #special C
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([23, 10, 6,4]))
    sttr = "  ___  / __|| (__  \\___|"
    for chr in sttr:
        f.write(bytes([ 255, 0, 0, ord(chr)]))
        # i+=1

    #special G
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([45, 9, 7,5]))
    sttr = "  ____  / ___|| |  _ | |_| | \\____|"
    for chr in sttr:
        f.write(bytes([ 128, 128, 128, ord(chr)]))


    #special 24 dericti
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([0, 0 , 1, height]))
    sttr = "." + (height - 2) * "|" + "'"
    for chr in sttr:
        f.write(bytes([ 255, 255, 255, ord(chr)]))
        # i+=1

    #special 24 dericti
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([width - 1, 0 , 1, height]))
    sttr = "." + (height - 2) * "|" + "'"
    print(len(sttr))
    print(height)
    for chr in sttr:
        f.write(bytes([ 255, 255, 255, ord(chr)]))
        # i+=1
    #special 24 dericti
    # f.write((derictive_code).to_bytes(2, "little"))
    # f.write(bytes([1, 0, width - 2,1]))
    # sttr = "-" * (width - 2)
    # for chr in sttr:
    #     f.write(bytes([ 255, 255, 255, ord(chr)]))
    #     # i+=1

    #special 24 dericti
    f.write((derictive_code).to_bytes(2, "little"))
    f.write(bytes([1, height - 1 , width - 2, 2]))
    sttr = "-" * (width -2)
    for chr in sttr:
        f.write(bytes([ 255, 255, 255, ord(chr)]))
    for chr in sttr:
        f.write(bytes([ 255, 255, 255, ord(chr)]))
        # i+=1

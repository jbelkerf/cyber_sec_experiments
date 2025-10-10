f = open("to.cimg", 'ab')
i = 0
x = 0
w = 0
y = 0
while i < 30:
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([i, 255, 255,255, (i * 6) , 0]))
    i+=1
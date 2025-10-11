filename = "to.cimg"
f = open(filename, 'ab')
i = 0
h = 0
w = 0
y = 0
while i < 60:
    if w > 0x50 :
        w = 0
        h+=10
    print(w)
    f.write((4).to_bytes(2, "little"))
    f.write(bytes([i, 255, 0,0, w , h]))
    w = w + 16
    i+=1
f = open(filename, "r+b")
f.seek(0x6)
f.write(b"\x60")
f.seek(0x7)
f.write(b"\x60")
f.seek(0x8)
f.write(b"\x84")
from pwn import *
filename = "to.cimg"

offset = 0x8
f = open(filename, "r+b")
f.seek(offset)
i = f.read(1)
result = ""
while i > 0:
    print(i)
    f.seek(offset)
    f.write(i)
    p = process(executable="/challenge/cimg", argv=["to.cimg"])
    result += p.recvall(timeout=2).decode()
    i = (i - 1) % 256

print(result)

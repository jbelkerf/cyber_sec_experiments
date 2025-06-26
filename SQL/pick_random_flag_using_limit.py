from pwn import *

p = process("/challenge/sql")

i = 6
result = 'flag : '

while i < 43:
    p = process("/challenge/sql")
    p.send(f"SELECT info FROM storage LIMIT 1 OFFSET 7\n")
    retu = p.recvall()
    strin = str(retu)
    if strin[0] == 'p' and strin[1] == 'w':
        print(strin)
    i = i + 1


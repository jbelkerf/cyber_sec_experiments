from pwn import *

p = process("/challenge/sql")

i = 1
result = 'flag : '

while i < 70:
    p = process("/challenge/sql")
    p.send(f"SELECT substr(value, {i}, 5) FROM storage WHERE substr(value, 1, 3)=='pwn'\n")
    #print(p.recvall())
    strobj = p.recvall()
    strd = str(strobj)
    splited = strd.split('\'')
    i = i + 5
    result = result + splited[3]

print(result)

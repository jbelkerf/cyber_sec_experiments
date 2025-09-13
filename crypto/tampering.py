from pwn import *
from Crypto.Util.strxor import strxor

st = "sleep".encode()
cry_str = bytes.fromhex("1247559abf")

key = strxor(cry_str, st)

flag = strxor(key, "flag!".encode())


payload = "TASK: " +   bytes.hex(flag)

p = process("/challenge/worker")

p.sendline(payload)
p.interactive()
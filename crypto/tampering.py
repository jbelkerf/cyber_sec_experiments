from pwn import *
from Crypto.Util.strxor import strxor

st = "sleep".encode()
cry_str = bytes.fromhex("1247559abf")

key = strxor(cry_str, st)

flag = strxor(key, "flag!".encode())

p = process("/challenge/worker")

p.sendline(flag)
print(p.recv(timeout=3))
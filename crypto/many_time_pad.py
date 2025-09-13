from Crypto.Util.strxor import strxor
from pwn import *

flag_cypher = bytes.fromhex('95211dda63b011b6ffdc086d995821f24357c57f6210c33ccb8a2f42668ca7040478e250f6d054251e97a86c2b87d9a2df442bba1500921e3ca3')

#print(len(flag_cypher))

text = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa".encode()
text_cypher = "4ffcd95eaa75d7703011c7bc62cace699989428c87d903bb236ab0ba83".encode()

key = strxor(text_cypher, text)

flag = strxor(flag_cypher, key)
print(flag.decode('Latin'))
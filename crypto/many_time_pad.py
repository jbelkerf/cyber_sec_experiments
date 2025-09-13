from Crypto.Util.strxor import strxor
from pwn import *

# p = process("/challenge/run")

# flag_cypher = bytes.fromhex(p.recvline_contains('Flag').split(':')[-1].strip())

# p.send



flag_cypher = bytes.fromhex('b41ea828ebedbb3fe9aacf441bb55d0a4768ec467e12a84daabb9e0b436dccf004d3373825fb26061c078800544183128eeec1e7a1e4c54bff9b')

#print(len(flag_cypher))

text = bytes.fromhex("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
text_cypher = bytes.fromhex("6ec36cac22287df926670095e027b2919db66bb59bdb68ca425b01f3a6fe0129f110cad9ce28e282d2fb58e484a66df4100d11033f2d15b6283b")

key = strxor(text_cypher, text[:len(text_cypher)])

flag = strxor(key,flag_cypher[:len(key)])
print(flag.decode('Latin'))
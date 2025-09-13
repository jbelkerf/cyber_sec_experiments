from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad


key = bytes.fromhex("c5f554df4ba5d7414c8515aed7562639")
flag_cyfer = bytes.fromhex("5fa516367480c29b76e677fb9d39879c922a309999b75c055b992287f247e99e558d1b15198ac1e71ca51ca5a813dc164a8532c0ab4fade226bf6daba1bb7539")

cypher = AES.new(key, mode=AES.MODE_ECB)

flag = unpad(cypher.decrypt(flag_cyfer), AES.block_size)

print(flag)


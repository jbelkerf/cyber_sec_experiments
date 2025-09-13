from Crypto.Util.strxor import strxor

key = bytes.fromhex("dd21aebc42a83f890b3a8d8b1ac12ae4c02e81e852a41417b4a1c0332207ef8d4475120e7d9f92d65fd50a9c02ea1247f03349cc9ca7e06575e0")

crypt_flag = bytes.fromhex("ad56c09221c753e56e5de8f05b8007c9a67cb98d6af55a5fe6cb9a724d34d6e60016466a13ecdbf83b8770d278a7560bc47a3382a8c49a3208ea")


flag = strxor(key, crypt_flag)

print(flag.decode())

import base64
from pwn import *

# Step 1: Decode exactly as in the challenge
b64_encoded_password = b"fr+pUr1PiG0="
decoded_password = base64.b64decode(b64_encoded_password.decode("l1"))

# Step 2: Send raw bytes with no newline
p = process("/challenge/runme")
print(p.recv().decode())  # Should say "Enter the password:"
p.send(decoded_password)  # send() — not sendline()
print(p.recvall().decode())  # get full output
p.close()

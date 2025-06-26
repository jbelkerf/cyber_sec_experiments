import base64
from pwn import *

# Step 1: Decode exactly as in the challenge
password =  b"\xdb-\xefQ\xbb{\t%"
password = base64.b64encode(password)
# password = password.encod/e("l1")

# Step 2: Send raw bytes with no newline
p = process("/challenge/runme")
print(p.recv().decode())  # Should say "Enter the password:"
p.send(password)  # send() — not sendline()
print(p.recvall().decode())  # get full output
p.close()

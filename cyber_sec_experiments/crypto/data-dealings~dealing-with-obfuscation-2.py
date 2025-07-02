import base64
from pwn import *

# Step 1: Reconstruct the final "correct password"
original = b"\xc8\xf2#\xb4\x94@\x82N"
correct = original[::-1].hex().encode("l1")  # same as the challenge logic

# Step 2: Apply reverse transformation logic (in reverse)

# Reverse the bytes
step1 = correct[::-1]

# Convert to string (latin-1 decode)
step2 = step1.decode("l1")

# Convert to hex string
step3 = step2.encode("l1").hex()

# Base64-encode the hex string
step4 = base64.b64encode(step3.encode("l1"))

# Reverse the base64-encoded bytes
final_input = step4[::-1]

# Step 3: Send it to the challenge
p = process("/challenge/runme")
print(p.recv().decode())
p.send(final_input)  # raw send, no newline
print(p.recvall().decode())
p.close()

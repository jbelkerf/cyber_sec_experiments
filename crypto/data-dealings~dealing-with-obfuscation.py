from pwn import *

def encode_to_bits(s):
    return b"".join(format(c, "08b").encode("latin1") for c in s)

# Step 1: Starting password
correct_password = b"KO#_\x03\x8dG0"

# Step 2: Apply the hex().encode("l1") transformations three times
for _ in range(3):
    correct_password = correct_password.hex().encode("l1")

# Step 3: Convert to bitstring as bytes
final_password = encode_to_bits(correct_password)

# Step 4: Send it to the process
p = process("/challenge/runme")
print(p.recv().decode())
p.send(final_password)  # send raw bytes, no newline
print(p.recvall().decode())
p.close()

from pwn import *

p = process("/challenge/runme")

# Correct password in bytes
correct_password_bytes = b"\xe4\xed\x80\x82\xc6\x91\x84\x92"

# Convert the correct password from bytes to a string of '0's and '1's
binary_password = ''.join(f"{byte:08b}" for byte in correct_password_bytes)

# Send the binary string (as text)
p.send(binary_password.encode())

# Receive and print the output
print(p.recvall().decode())

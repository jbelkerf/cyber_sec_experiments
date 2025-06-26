import sys
from pwn import *
from time import sleep

# Start the process
p1 = process("/challenge/runme")

# Sleep for a second to let the process start
sleep(1)

# Receive any initial output
print(p1.recv())

# Password to send (this is your original password)
password = "📊 🚔 🔦 🕞"

# Convert password to a hexadecimal string
hex_password = password.encode('utf-8').hex()  # Convert the password to hex

print(f"Sending hex password: {hex_password}")

# Send the password in hexadecimal format
p1.sendline(hex_password)

# Receive the next part of output
print(p1.recv().decode())  # Decode the output if needed
print(p1.recv().decode())  # Decode the output if needed

# Close the process when done
p1.close()

from pwn import *
from time import *

# Open the file where the password will be written in binary mode
f = open("file", 'wb')

# Correct password
passs = b"gqmjzsqv"

# Step 1: Decode from 'latin1'
# Step 2: Encode it into 'utf-16'
encoded_pass = passs.decode("latin1").encode("utf-16")

# Step 3: Write the result to the file (in bytes, since we opened the file in binary mode)
f.write(encoded_pass)

# Close the file
f.close()

import socket 

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

add = ("10.0.0.2", 31337)
msg = b"Hello, World!\n"
s.bind(("10.0.0.1", 31338))
s.sendto(msg, add)

print(s.recvfrom(1024))
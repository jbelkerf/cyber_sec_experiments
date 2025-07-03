import socket 

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

add = ("10.0.0.2", 31338)
msg = b"FLAG"
sock.bind(("10.0.0.1", 31337))
i = 10
while True:
    sock.sendto(msg, add)
    i-=i


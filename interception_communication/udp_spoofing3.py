import socket, time
from multiprocessing import Process


def listener():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.bind(("10.0.0.1", 3000))

    print("start lestinig...")
    print(s.recvfrom(1024))
    print("Done!")

def forger():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(("10.0.0.1", 31337))
    i = 10
    port = 1
    while True:
        add = ("10.0.0.2", port)
        msg = b"FLAG:10.0.0.1:3000"
        sock.sendto(msg, add)
        # time.sleep()
        port+=1
    

p1 = Process(target=listener)
p2 = Process(target=forger)
p1.start()
p2.start()
p1.join()
p2.join()
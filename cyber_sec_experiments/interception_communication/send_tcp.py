from scapy.all import TCP, IP, send


ip = IP(dst="10.0.0.2")
tcp = TCP(sport=31337, dport=31337, seq=31337,ack=31337, flags="APRSF")
packet = ip / tcp

send(packet)
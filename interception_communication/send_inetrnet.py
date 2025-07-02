from scapy.all import IP, Raw, send


ip = IP(dst="10.0.0.2", proto=0xFF)

payload = Raw(load=b"waaaaaaaaa")
packet = ip / payload

send(packet)

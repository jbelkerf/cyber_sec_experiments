import socket, time

host = '127.0.0.1'
port = 1887

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

sock.connect((host, port))

for _ in range(100):
    responce = sock.recv(9000000)
    #time.sleep(1)
    print(responce.decode())
    msg = responce.decode()
    if "for:" in msg:
        exp = msg.split('for:')[-1].strip()
        print("exp ->", exp)
        print(eval(exp.encode()))
        sock.sendall(str(str(eval(exp)) + '\n').encode())


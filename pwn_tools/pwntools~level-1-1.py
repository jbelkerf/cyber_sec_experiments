from pwn import * 

context(arch="amd64", os="linux", log_level="info")

challenge_path = "/challenge/pwntools-tutorials-level1.1"
p = process(challenge_path)

payload = b'p' + b'\x15' + p32(123456789) + b'Bypass Me:)'

print(payload)


p.sendlineafter(":)\n###\n", payload)

flag = p.recvline().decode()

print(f"flag is {flag}")

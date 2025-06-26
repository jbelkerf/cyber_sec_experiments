.intel_syntax noprefix

#setting the path of the file we want to open on the stack
mov BYTE PTR [rsp + 0], '.'
mov BYTE PTR [rsp + 1], '/'
mov BYTE PTR [rsp + 2], 'f'
mov BYTE PTR [rsp + 3], 'i'
mov BYTE PTR [rsp + 4], 'l'
mov BYTE PTR [rsp + 5], 'e'
mov BYTE PTR [rsp + 6], 0

# giving the open syscall its arguments
mov rdi, rsp
mov rsi, 0
mov rax, 2
syscall

#giving the read syscall its arguments
mov rdi, rax
mov rsi, rsp
mov rdx, 100
mov rax, 0
syscall

#giving the write syscall its argument
mov rdi, 1
mov rsi, rsp
mov rdx, rax 
mov rax, 1
syscall

#exit with 42 value
mov rdi, 42
mov rax, 60
syscall

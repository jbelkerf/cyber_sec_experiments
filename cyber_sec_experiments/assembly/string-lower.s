.intel_syntax noprefix
.global _start

_start:
	mov rbx, 0
	cmp rdi, 0
	jne loop_condition
	jmp return
loop_condition:
	mov rdx, [rdi]
	mov al, dl
	cmp al, 0
	je return
	cmp al, 0x5a
	jle if_statment
	add rdi, 1
	jmp loop_condition
	
if_statment:
	add rbx, 1
	mov rsi, rdi
	mov rdi, [rdi]
	mov rax, 0x403000
	call rax
	mov rdi, rsi
	mov [rdi], rax
	add rdi, 1
	jmp loop_condition
return:
	mov rax, rbx
	ret

.intel_syntax noprefix
.global _start

_start:
	jmp where_to_jump
.rept 0x51
	nop
.endr
where_to_jump:
	pop rdi
	mov rax, 0x403000
	jmp rax

mov rax, 60
syscall

.intel_syntax noprefix
.global _start

_start:
	mov rbx, 0
	mov rax, 0
loop:
	add rax , [rdi + rbx * 8]
	add rbx, 1
	cmp rbx, rsi
	jne loop
	div rsi

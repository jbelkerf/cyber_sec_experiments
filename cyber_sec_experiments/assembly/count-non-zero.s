.intel_syntax noprefix
.global _start

_start:
	mov rax, 0
	cmp rdi, 0
	je done
loop:
	mov rbx, [rdi + rax]
	cmp rbx, 0
	je done
	add rax, 1
	jmp loop

done:
	nop

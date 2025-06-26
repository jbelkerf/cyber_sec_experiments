.intel_syntax noprefix
.global _start

_start:
	jmp skip_rept
.rept 0x51
	nop
.endr
skip_rept:
	mov rax, 1

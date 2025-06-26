.intel_syntax noprefix
.global _start

_start:
	cmp rdi , 4
	ja default
	jmp [rsi + rdi * 8]
default:
	jmp [rsi + 4 * 8]


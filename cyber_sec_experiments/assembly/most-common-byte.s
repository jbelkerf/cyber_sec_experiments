.intel_syntax noprefix
.global most_common_byte

#most_common_byte(src_addr, size):
#  i = 0
#  while i <= size-1:
#    curr_byte = [src_addr + i]
#    [stack_base - curr_byte] += 1
#    i += 1
#  b = 0
#  max_freq = 0
#  max_freq_byte = 0
#  while b <= 0xff:
#    if [stack_base - b] > max_freq:
#      max_freq = [stack_base - b]
#     max_freq_byte = b
#    b += 1
#  return max_freq_byte

# src_addr  ---> rdi
# size.     ---> rsi
# i.        ---> rdx
# curr_byte ---> rcx
# stack_base --> rbp
#tmp.       ---> r8

most_common_byte:
    mov rdx, 0               #i = 0
    push rbp
    mov rbp, rsp             #
    sub rsp, 0x200          #allocate 0x100 in stack

# Zero out the frequency table
 mov r8, rbp
 mov rcx, 0x100
clear_stack:
    mov byte ptr [r8], 0
    sub r8, 1
    loop clear_stack

    jmp loop1

loop1:
    cmp rdx, rsi             #while (i <= size)
    jge part2   

    mov r8, rdi              # tmp = src_addr
    add r8, rdx               # tmp = src_addr + i
    movzx rcx, byte ptr [r8]    #curr_byte = [tmp]

    mov r8, rbp              #tmp = stack_base
    shl rcx, 1
    sub r8, rcx               # tmp = stack_base - curr_byte * 2

    mov ax, word ptr [r8]
    add ax, 1              #[stack_base - curr_byte]++
    mov word ptr [r8], ax

    add rdx, 1                #i++
    jmp loop1

# b.            ---> rdx
# max_freq.     ---> rcx
# max_freq_byte ---> rsi

part2:
    mov rdx, 0                #b             = 0
    mov rcx, 0                #max_freq      = 0
    mov rsi, 0                #max_freq_byte = 0
    jmp loop2

loop2:
    cmp rdx, 0x100           #while (b <= 0x100)
    jge do_return

    mov r8, rbp               #tmp = stack_base
    mov r9, rdx
    shl r9, 1
    sub r8, r9                #tmp = stack_base - b

    mov ax, word ptr [r8]     #tmp = [stack_base - b]
    cmp ax, cx               #if ([stack_base - b] > max_freq)
    jg do_cond
    add rdx, 1                 #b++
    jmp loop2

do_cond:
    mov cx, ax                # max_freq = [stack_base - b]
    mov rsi, rdx                #max_freq_byte = b
    add rdx, 1                  #b++
    jmp loop2

do_return:
    mov rax, rsi
    mov rsp, rbp
    pop rbp
    ret

.intel_syntax noprefix
.global most_common_byte

# Function: most_common_byte(src_addr, size)
# Arguments:
#   rdi - src_addr
#   rsi - size
# Returns:
#   rax - most common byte

most_common_byte:
    push rbp
    mov rbp, rsp
    sub rsp, 0x200             # Allocate 512 bytes for frequency table (256 words)

    # Zero out the frequency table
    mov rcx, 0x100             # 256 words to clear
    mov r8, rbp
clear_table:
    mov word ptr [r8], 0       # Clear 2 bytes (word)
    sub r8, 2
    loop clear_table

    # Count byte frequencies
    mov rdx, 0                 # i = 0
count_loop:
    cmp rdx, rsi               # while (i < size)
    jge find_max               # Jump to find_max if done

    mov r8, rdi                # tmp = src_addr
    add r8, rdx                # tmp = src_addr + i
    movzx rcx, byte ptr [r8]   # curr_byte = [tmp]

    mov r8, rbp
    shl rcx, 1                 # Offset = curr_byte * 2 (word size)
    sub r8, rcx                # Address = stack_base - (curr_byte * 2)

    mov ax, word ptr [r8]      # Load current count
    add ax, 1                  # Increment count
    mov word ptr [r8], ax      # Store updated count

    add rdx, 1                 # i++
    jmp count_loop

# Find the byte with the maximum frequency
find_max:
    mov rdx, 0                 # b = 0
    mov rcx, 0                 # max_freq = 0
    mov rsi, 0                 # max_freq_byte = 0

find_max_loop:
    cmp rdx, 0x100             # while (b < 256)
    jge done                   # Done if b >= 256

    mov r8, rbp
    mov r9, rdx
    shl r9, 1                  # Offset = b * 2 (word size)
    sub r8, r9                 # Address = stack_base - (b * 2)

    mov ax, word ptr [r8]      # Load frequency
    cmp ax, cx                 # Compare with max_freq
    jle next_byte              # If not greater, skip

    mov cx, ax                 # max_freq = current frequency
    mov rsi, rdx               # max_freq_byte = current byte

next_byte:
    add rdx, 1                 # b++
    jmp find_max_loop

# Return result

done:
    mov rax, rsi               # Return most common byte
    mov rsp, rbp               # Restore stack
    pop rbp
    ret
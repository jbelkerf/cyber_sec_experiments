.intel_syntax noprefix
.global _start

_start:
	mov eax, dword ptr [rdi]
    cmp eax, 0x7f454c46
    je do_addition            

    cmp eax, 0x00005A4D       
    je do_subtraction         

    jmp do_multiplication     

do_addition:
    mov eax, dword ptr [rdi + 4]        
    add eax, dword ptr [rdi + 8]       
    add eax, dword ptr [rdi + 12]      
    jmp done                 

do_subtraction:
    mov eax, dword ptr [rdi + 4]        
    sub eax, dword ptr [rdi + 8]        
    sub eax, dword ptr [rdi + 12]       
    jmp done               

do_multiplication:
    mov eax, dword ptr [rdi + 4]        
    imul eax, dword ptr  [rdi + 8]                         
    imul eax, dword ptr [rdi + 12]                        
    jmp done                  

done:
    nop 


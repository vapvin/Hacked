section .text
    global _start

_start:
    xor rax, rax ; value 0
    mov rbx, rax
    mov rcx, rax
    mov rdx, rax

    sub rsp, 64
    mov rdi, 0 ; input syscall
    mov rsi, rsp
    mov rdx, 63

    syscall
    
    mov rax, 1
    mov rdi, 1 ; output syscall
    mov rsi, rsp
    mov rdx, 63

    syscall

    mov rax, 60 ; exit func syscall

    syscall
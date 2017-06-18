section .data
    msg db "Hello World!", 0x0a ;buf
    len equ $-msg

section .text
global start
start
    mov eax,4
    push dword len ;nbytes
    push dword msg ;buf
    push dword 1 ;fd
    push dword eax ;some 4 bytes for mac os x
    int 0x80 ;jump to system call
    add esp,16

    mov eax,1
    push dword 0 ;error-no 0
    push dword eax ;
    int 0x80
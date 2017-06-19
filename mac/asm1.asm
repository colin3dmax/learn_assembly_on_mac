SECTION .data
msg:db "Hello",10,0

SECTION .text

extern printf
global _main

_main:
	push ebp
	mov ebp,esp

	push msg
	call printf

	mov esp,ebp
	pop ebp
	ret


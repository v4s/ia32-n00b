global _start
section .text
_start:
	mov al, 0x5
	jmp lol	
lol:
	push eax
	mov al, 0x4
	mov bl, 0X1
	mov ecx, message
	mov dl,	lenmessage
	int 0x80

	pop eax
	dec al
	jnz lol
section .data
	message: db "Matoria ."
	lenmessage equ $ - message


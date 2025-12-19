org 0000h
	mov dptr, #0400h
	mov r0, #8d
	
here:	clr a
	movc a, @a+dptr
	inc dptr
	orl a, r7
	rl a 
	mov r7, a
	djnz r0, here

	rr a
	mov a, r7
	sjmp $

org 0400h
	db 1, 1, 1, 1, 0, 0, 0, 0
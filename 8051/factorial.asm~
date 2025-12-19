org 0000h

	mov a, #8h
	; a -> p0, p2 -> r2, p3 -> r3
	mov dptr, #0400h
	mov r7, a
	add a, a
	movc a, @a+dptr
	mov r3, a

	mov a, r7
	add a, a
	inc a
	movc a, @a+dptr
	mov r2, a
	
	
	

	sjmp $


org 0400h
	db 00h, 01h
	db 00h, 01h
	db 00h, 02h
	db 00h, 06h
	db 00h, 18h
	db 00h, 78h
	db 02h, 0d0h
	db 13h, 0b0h
	db 9dh, 80h

	end 
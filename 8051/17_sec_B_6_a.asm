org 0000h
	mov a, #0ffh
	mov p1, a
	mov a, p1
	mov dptr, #0200h
	movc a, @a+dptr
	mov p2, a
	
	sjmp $

org 0200h
	db 0, 1, 4, 9, 16, 25, 36, 49, 64, 81

	end 
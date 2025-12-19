org 0000h
	mov dptr, #0400h
	mov r0, #5d
	mov r7, #0d
here:	clr a
	movc a, @a+dptr
	inc dptr
	mov b, r7
	cjne a, b, loop
	sjmp next
		
	loop:
	jc next
	mov r7, a 
	
next:	djnz r0, here	

	mov a, r7
	sjmp $ 
	
org 0400h
	db 1d, 3d, 0d, 55d, 12d
	end
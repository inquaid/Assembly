ORG 0000H
	mov dptr, #0040h
	mov r0, #5
here:
	clr a
	movc a, @a+dptr
	inc dptr
	djnz r0, here
	
		
	nop
	
	sjmp $
	
org 0040h
	db 'b', 'a', 'l', 9d, 10h

	end 
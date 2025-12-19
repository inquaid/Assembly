org 0000h
	mov a, #29
	cjne a, #28, here
	sjmp $

here:
	jc h2
	mov r6, a
	sjmp $
h2:	
	mov r7, t	

	sjmp $
	end
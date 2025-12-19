org 0000h

	mov a, #11001010b
	mov b, #11110000b
	anl a, b
	orl a, b
	xrl a, #11111111b
	swap a	
	

	sjmp $
	end 
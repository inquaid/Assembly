org 0000h

	mov a, #55h

	mov r0, #7d
	mov r1, #100d

h1:	
	mov r1, #5d
	h2:	
		djnz r1, h2;
	djnz r0, h1

	sjmp $
	end 
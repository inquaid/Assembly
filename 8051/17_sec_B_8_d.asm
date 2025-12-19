org 0000h
	mov a, #90
	mov a, #90d
	mov a, #90h
	
	setb p1.0
	mov r0, #4d
	clr a
here:
	mov c, p1.0
	rlc a
	djnz r0, here

	swap a
	mov r0, #4d
h2:
	mov c, p1.0
	rrc a
	djnz r0, h2

	mov 23h, a
		
	sjmp $
	end
org 0000h

	mov r1, #0feh
	mov r2, #0bah

	mov a, r1
	rl a
	rl a
	rl a
	rl a
	mov r1, a

	mov a, r2
	rr a
	rr a
	rr a
	rr a
	mov r2, a

	anl a, r1
	swap a
	mov p3, a
	

	sjmp $
	end 
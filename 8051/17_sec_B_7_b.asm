org 0000h
	mov a, #123d
	mov b, #10d

	div ab
	mov r0, a
	mov a, b
	mov r2, a
	mov a, r0
	mov b, #10d
	div ab
	mov r4, a
	mov a, b
	mov r3, a

	mov p1, r4
	mov p2, r3
	mov p3, r2
	
	sjmp $
	end 
org 0000h
	mov a, #7d
	mov r1, a
	mov r2, #2d
		
here:	mov a, r1
	mov b, r2
	div ab
	mov a, b
	jz not_prime

	inc r2
	cjne r2, #7d, here	

	prime:
		mov a, #'Y'
		sjmp $
		
	not_prime:
		mov a, #'N'
		sjmp $

	end 
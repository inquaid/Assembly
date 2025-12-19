org 0000h
	mov a, #9d

	cjne a, #0, c1
		call non_prime
c1:	cjne a, #1, c2
		call non_prime
c2:	cjne a, #2, check
		call prime

	check:
		mov r0, #2d
		mov r1, a
		
here:		mov b, r0
		mov a, r1
		div ab
		mov a, b
		jz non_prime

		inc r0
		mov a, r1
		mov b, r0
		cjne a, b, here
	
	
	
	prime:
		mov a, #'Y'
		sjmp $
		
	non_prime:
		mov a, #'N'
		sjmp $

	end 
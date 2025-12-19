org 0000h

	mov r0, #34d
	mov r1, #7d
	clr a
	
gcd:
	mov a, r1
	cjne a, #0d, here
	mov a, r0
	mov r7, a
	sjmp ans

here:	mov a, r0
	mov b, r1

	div ab
	mov a, r1
	mov r0, a
	mov a, b
	mov r1, a
	sjmp gcd
	
ans:

	sjmp $
	end 
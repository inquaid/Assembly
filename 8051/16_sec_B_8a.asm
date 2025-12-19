org 0000h
	mov a, #11001010b
	mov r0, #8
	mov r3, #0
	mov r2, #0

here:	
	mov r1, a
	anl a, #1
	jz h1
	inc r3
	sjmp h2
		
h1:	inc r2
h2:
	mov a, r1
	rr a
	djnz r0, here
	
	sjmp $
	end
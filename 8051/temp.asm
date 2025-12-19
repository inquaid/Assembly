ORG 00H	
	; gcd(a, b)
	; if b == 0 return a
	; return gcd(b, a % b)
	setb 56
	mov c, 56
	;mov c, p0.3
	mov r0, #28h
	mov r4, #4
	mov a, #1
hh1:
	mov @r0, a
	inc r0
	inc a
	djnz r4, hh1
	
	mov a, #32
	mov b, #6

strt:	mov r0, a
	mov r1, b
	mov a, b
	cjne a, #0, hh
	mov a, r0
	mov r7, a
	sjmp endline	
hh:	
	mov a, r0
	mov b, r1
	div ab
	mov a, r1

	sjmp strt


	endline:
	
	mov a, #30
	cpl a
	mov b, #10
	mul ab
	
	mov a, #0ffh
	mov 27h, a
	setb 27h.0
	clr 27h
	setb 38h
	mov c, p3.1
	MOV   R1, #0A2H
	MOV   R2, #0B3H
	inc r0
	inc r1
	inc r2
	inc r3
	inc r4
	inc r5
	inc r6
	inc r7
	MOV   A, R1
	RL    A
	RL    A
	RL    A
	RL    A
	MOV R1, A
	
	MOV   A, R2
	RR    A
	RR    A
	RR    A
	RR    A
	MOV R2, A
	
	MOV   A, R1      
	ANL   A, R2      
	SWAP  A
	MOV   P3, A

	sjmp $
	end
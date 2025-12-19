org 0000h
	mov a, #0ffh
	mov p1, a
	mov r1, #0
here: 	jnb p2.5, here
	clr p2.5
	mov a, p1
	mov r1, a
	setb p2.7
	acall delay
	clr p2.7

h2: 	jnb p2.5, h2
	clr p2.5
	mov a, p1
	mov r2, a 

	mov r7, #0h
	mov a, r1
	mov b, r2
add_here:
	mov r3, a
	add a, r7
	mov r7, a
	mov a, r3
	inc a
	cjne a, b, add_here
	
	
delay:
	ret
	end 
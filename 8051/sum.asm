org 0000h
	mov 40, #7dh
	mov 41, #0ebh
	mov 42, #0c5h
	mov 43, #5bh
	mov 44, #30h

	mov r0, #40
	mov r1, #5
	clr a
here:	add a, @r0
	inc r0

	jnc dnd
	inc r7
	
	dnd:
	
	djnz r1, here

	sjmp $


	end 
	

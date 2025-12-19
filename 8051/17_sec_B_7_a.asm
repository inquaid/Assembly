org 0000h
	mov r1, #35h
	
here: 	jnb p2.3, here
	mov a, p1
	mov @r1, a
	inc r1
	sjmp here
	
	sjmp $

	end 
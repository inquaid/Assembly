org 0000h
	mov r0, #56h
	setb c
	mov @r0, c
	
	sjmp $
	end
 
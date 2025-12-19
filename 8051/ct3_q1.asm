org 0000h
	light equ p2.4
	bell equ p1.7

here:	jnb light, here
	setb bell
	
	sjmp $
	end 
org 0000h

here:	setb p3.1
	lcall delay
	clr p3.1
	lcall delay
	lcall delay
	lcall delay
	lcall delay
	sjmp here

	sjmp $

	delay:
		mov r0, #10d
		loop: djnz r0, loop

		ret	

	end 
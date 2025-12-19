org 0000h
	setb psw.4
	mov r5, #55h
	mov r3, #33h
	mov r7, #77h

	mov sp, #20h
	push 15h
	push 13h
	push 17h

	clr psw.4
	setb psw.3
	pop 0fh
	pop 0bh
	pop 0dh


	sjmp $
	end
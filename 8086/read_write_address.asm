
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    MOV AX, 2000H
    MOV DS, AX
    MOV DI, 8BE4H          
    CLI
    MOV CX, 42D
ADD_LOOP:
    MOV AX, [DI]
    ADD AX, 5D
    MOV [DI], AX
    INC DI
    LOOP ADD_LOOP   
    STI
ret





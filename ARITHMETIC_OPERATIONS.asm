.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    NUM1 DW 5
    NUM2 DW 3
    RESULT DW ?
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
  	  
        MOV AX, NUM1
        MOV BX, NUM2
        MUL BX
        MOV RESULT, AX
        
    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
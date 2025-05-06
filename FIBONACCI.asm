.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    RES DW ?
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
  	  
        MOV AX, 0
        MOV BX, 1
        
        MOV CX, 8
        
        START:
            MOV DX, BX
            ADD BX, AX
            MOV AX, DX
        LOOP START:
        
        MOV RES, BX    
            

    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
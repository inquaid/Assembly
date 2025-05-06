.MODEL SMALL
.STACK 100H

.DATA
    X DW 12 
    N DW 5 
    RES DW ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
            
            MOV BX, 0
            MOV CX, N  
            MOV AX, 0
            START:
                ADD AX, X 
                ADD BX, AX
            LOOP START
            MOV RES, BX  
                    
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
END MAIN    
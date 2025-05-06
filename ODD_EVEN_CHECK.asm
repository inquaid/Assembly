.MODEL SMALL
.STACK 100H

.DATA
    A DW ?
    B DW ?  
    M1 DW 'EVEN $'
    M2 DW 'ODD $'
    
.CODE
               
    READ PROC
        MOV AH, 01H
        INT 21H    
        MOV AH, 0
        SUB AX, 30H
        ADD BX, AX
        MOV AX, BX
        MUL CX
        MOV BX, AX
        
        RET
        
    READ ENDP                            
               
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV BX, 0
        MOV CX, 10
        CALL READ
        
        MOV CX, 1
        CALL READ
        
        MOV A, BX
               
        MOV AX, A
        AND AX, 1
        
        CMP AL, 0
        
        
        JNE ELSE
            MOV DL, OFFSET M1
            MOV AH, 09H
            INT 21H 
            
            JMP EXT
        ELSE:      
            MOV DL, OFFSET M2
            MOV AH, 09H
            INT 21H 
            
        EXT:        
               
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
END MAIN    
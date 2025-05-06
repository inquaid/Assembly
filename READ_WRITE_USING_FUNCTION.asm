.MODEL SMALL
.STACK 100H

.DATA
    A DB ?

.CODE
        
    READ PROC 
        MOV AH, 01H
        INT 21H
        SUB AX, 30H
        RET
    READ ENDP     
    
    PRINT PROC
        MOV AX, 0
        MOV AL, A
        DIV CL
        MOV A, AH 
        
        MOV DL, AL       
        ADD DL, 30H
        MOV AH, 02H
        INT 21H   
        RET     
    PRINT ENDP        
        
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        MOV CX, 10
        
        CALL READ
        MUL CX
        MOV A, AL
               
        CALL READ
        MOV BL, A
        ADD AL, BL
        MUL CX
        MOV A, AL 
        
        CALL READ
        MOV BL, A
        ADD AL, BL
        MOV A, AL
        
        MOV DL, 0AH
        MOV AH, 02H
        INT 21H
        
        MOV DL, 0DH
        MOV AH, 02H
        INT 21H                     
                    
        
        MOV CX, 100            
        CALL PRINT
        
        
        MOV CL, 10
        CALL PRINT
        
        MOV CL, 1
        CALL PRINT        
                 
                 
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
END MAIN    
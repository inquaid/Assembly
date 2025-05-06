.MODEL SMALL
.STACK 100H

.DATA
    A DB ?
    B DB ?          
    RES DB ?
    MSG DB 'ENTER NUM: $'
    MSG2 DB 'ANS: $'
    
.CODE
    
    READ PROC 
        MOV AX, 0
        MOV AH, 01H
        INT 21H       
        SUB AL, 30H  
        ADD BL, AL
        MOV AL, BL
        MUL CX   
        MOV BL, AL
        RET
    READ ENDP       
    
    PRINT PROC
        MOV AX, 0
        MOV AL, BL
        DIV CL
        MOV DL, AL
        MOV BL, AH
        ADD DL, 30H
        MOV AH, 02H
        INT 21H
                
        RET        
    PRINT ENDP    
    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX 
        
        MOV BL, 0
        MOV CX, 10
        CALL READ 
                  
        MOV CX, 1
        CALL READ 

        MOV A, BL
        
        MOV BL, 0
        MOV CX, 10
        CALL READ
        
        MOV CX, 1
        CALL READ
        
        MOV B, BL 
        
        MOV AL, A
        ADD AL, B
        MOV RES, AL

        
      ;  CALL READ
       ; MOV B, AL
        
        ;MOV CX, 3
        ;MOV AL, B
        ;MUL CX
        ;ADD AL, A
        ;MOV RES, AL
        MOV BL, 0AH
        SUB BL, 30H
        CALL PRINT
        
        MOV BL, 0DH
        SUB BL, 30H
        CALL PRINT
        
                 
        MOV BL, RES  
               
        MOV CX, 100
        CALL PRINT 
        
        MOV CX, 10
        CALL PRINT
        
        MOV CX, 1
        CALL PRINT
                
    
    MAIN ENDP
END MAIN    
    
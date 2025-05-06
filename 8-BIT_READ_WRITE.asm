.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT                  
    BUFFER DB 4 DUP(?)
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX      
        
        ;=======================================|
        ; READ 8-BIT NUMBER FROM USER AND PRINT |
        ;=======================================|
        
        
        MOV AX, 0
        MOV AH, 01H
        INT 21H           
    
        SUB AL, 30H
        MOV CX, 10
        MUL CX
        MOV BL, AL  
        
        MOV AX, 0
        MOV AH, 01H
        INT 21H
        
        SUB AL, 30H
        ADD BL, AL
        MOV AL, BL
        MUL CX
        MOV BL, AL
        
        MOV AX, 0
        MOV AH, 01H
        INT 21H
        SUB AL, 30H
        ADD BL, AL
        
                
                 
                   
        MOV AX, BX
        
        ; FIRST DIVISION
        MOV DX, 0
        MOV CX, 10
        DIV CX     
        
        ; SAVING
        ADD DL, 30H ; CONVERTING TO ASCII ('3')
        MOV BUFFER, DL
              
              
        ; SECOND DIVISION
        MOV DX, 0
        DIV CX
        
        ; SAVING
        ADD DL, 30H
        MOV BUFFER+1, DL                            
                                    
                                    
        ; THIRD DIVISION
        MOV DX, 0
        DIV CX          
        
        ; SAVING
        ADD DL, 30H
        MOV BUFFER+2, DL
        
        ; TEMINATING
        MOV BYTE PTR [BUFFER+3], '$'
        
        ; PRINTING
        MOV DL, BUFFER+2
        MOV AH, 02H
        INT 21H
        
        MOV DL, BUFFER+1
        MOV AH, 02H
        INT 21H
        
        MOV DL, BUFFER
        MOV AH, 02H
        INT 21H
        
        
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN    
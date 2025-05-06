.MODEL SMALL
.STACK 100H

.DATA  
    MSG DB 'ENTER A THREE-DIGIT NUMBER: $'

.CODE 
    MAIN PROC
    MOV AX, @DATA
    MOV DS, AX          
        
    MOV DX, OFFSET MSG
    MOV AH, 09H
    INT 21H               
                
    ; FIRST DIGIT SCAN
    MOV AH, 01H
    INT 21H
    SUB AL, 30H
    MOV CX, 10
    MUL CX
    MOV BL, AL
    
    ; SECOND DIGIT SCAN
    MOV AH, 01H
    INT 21H
    SUB AL, 30H
    ADD BL, AL
    MOV AL, BL
    MUL CL
    MOV BL, AL
                
    ; THIRD DIGIT SCAN
    MOV AH, 01H
    INT 21H
    SUB AL, 30H
    ADD BL, AL
    
    ; FIRST DIGIT             
    MOV AX, 0
    MOV AL, BL      
    MOV DX, 0
    DIV CX       
    ADD DL, 30H     
    MOV BL, AL     
    
    MOV AH, 02H
    INT 21H
                     
    ; SECOND DIGIT
    MOV AX, 0
    MOV AL, BL
    MOV DX, 0
    DIV CX
    ADD DL, 30H
    MOV BL, AL        
    
    MOV AH, 02H
    INT 21H
    
    MOV DL, BL 
    ADD DL, 30H
    MOV AH, 02H
    INT 21H          
                     
                     
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN    
.MODEL SMALL
.STACK 100H

.DATA
    A DW 0FF63H
    B DW 0FDE8H  
    C DW ?
    
.CODE
    
    READ PROC
         MOV AH, 01H
         INT 21H
         SUB AL,30H
         MOV AH, 0
         ADD BX, AX
         MOV AX, BX
         MUL CX
         MOV BX, AX
            
         RET
    READ ENDP   
                
    SCAN PROC   
        MOV AH, 01H
        INT 21H
        
        CMP AL, '-'
        JNE ELSE    
            MOV CX, 10
            CALL READ
            
            MOV CX, 1
            CALL READ
            
            MOV CX, -1
            MOV AX, BX
            MUL CX
            MOV BX, AX
            
            RET    
        
        ELSE:
            SUB AL, 30H 
            MOV AH, 0
            MOV CX, 10
            MUL CX   
            MOV BX, AX 
            MOV CX, 1
            CALL READ
        
        RET    
        
    SCAN ENDP  
    
    COUT PROC     
        MOV DX, 0
        MOV AX, BX
        DIV CX
        MOV BX, DX
        MOV DL, AL 
        ADD DL, 30H
        MOV DH, 0
        MOV AH, 02H
        INT 21H
             
        RET     
    COUT ENDP    
    
    PRINT PROC
        CMP BX, 0
        JGE ELSE2
             MOV DL, '-'
             MOV AH, 02H
             INT 21H 
             MOV CX, -1
             MOV AX, BX
             MUL CX
             MOV BX, AX
               
             
        ELSE2:
            
        MOV CX, 10 
        CALL COUT 
        MOV CX, 1
        CALL COUT
            
        
        RET
    PRINT ENDP    
                
    MAIN PROC  
        MOV AX, @DATA
        MOV DS, AX
                   
                   
        MOV BX, 0
        CALL SCAN
        MOV A, BX
        
        MOV BX, 0
        CALL SCAN
        MOV B, BX
        
        MOV CX, B
        MOV AX, A
        MUL CX
        MOV C, AX
                    
        MOV DX, 0AH
        MOV AH, 02H
        INT 21H
        
                    
        MOV DX, 0DH
        MOV AH, 02H
        INT 21H
        
                    
                    
        MOV BX, A
        
        CALL PRINT            
               
               
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
END MAIN    
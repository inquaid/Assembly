.MODEL SMALL
.STACK 100H

.DATA
    A DW ?
    B DW ?    
    RES DW ? 
    NEGSIGN DW '-$'
    
.CODE          

    HELPER PROC      
        MOV AX, 0
        MOV AH, 01H
        INT 21H    
        MOV AH, 0
        SUB AX, 30H    
        ADD BX, AX
        MOV AX, BX
        MUL CX
        MOV BX, AX
                
        RET    
    HELPER ENDP
          
    READ PROC
        MOV AX, 0
        MOV AH, 01H
        INT 21H
        
        CMP AL, '-'
        JNE ELSE
            MOV BX, 0
            MOV CX, 10
            CALL HELPER
            
            
            MOV CX, 1
            CALL HELPER
            
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
            MOV BX, 0
            MOV BL, AL
            MOV CX, 1
            CALL HELPER
            
        
             
             
        RET     
    READ ENDP          
    
    PHELP PROC 
        MOV DX, 0 
        MOV AX, BX
        DIV CX
        MOV BX, DX    
        
        MOV DX, AX
        ADD DX, 30H
        MOV AH, 02H
        INT 21H
        
        RET
    PHELP ENDP                 
                 
    PRINT PROC
        
        CMP BX, 0
        JGE GOTO
            MOV CX, -1
            MOV AX, BX
            MUL CX
            MOV BX, AX
            MOV DX, OFFSET NEGSIGN
            MOV AH, 09H
            INT 21H
            
        GOTO:     
        
            MOV CX, 10
            CALL PHELP
            
            MOV CX, 1
            CALL PHELP
              
        
        RET        
    PRINT ENDP    
    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
                    
        CALL READ
        MOV A, BX
        
        CALL READ
        MOV B, BX
        
        MOV CX, B
        MOV AX, A  
        
        MUL CX
        MOV RES, AX
        
                  
        MOV BX, 0AH
        SUB BX, 30H
        MOV CX, 1
        CALL PHELP
        
        MOV BX, 0DH
        SUB BX, 30H
        CALL PHELP
        
                  
        MOV BX, RES          
        CALL PRINT
                   
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
END MAIN    
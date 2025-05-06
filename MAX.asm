.MODEL SMALL
.STACK 100H

.DATA   
    A DW ?
    B DW ?
    C DW ?    
    M1 DW ' A IS GREATER $'
    M2 DW ' B IS GREATER $'                       
    M3 DW ' C IS GREATER $'
    
.CODE
    
    CIN PROC
        MOV AH, 01H
        INT 21H
        SUB AL, 30H
        MOV AH, 0
        ADD BX, AX
        MOV AX, BX
        MUL CX
        MOV BX, AX   
           
        RET
    CIN ENDP    
    
    SCAN PROC
        MOV AH, 01H
        INT 21H
        
        CMP AL, '-'
        
        JNE ELSE
            MOV BX, 0
            MOV CX, 10
            CALL CIN    
            
            
            MOV CX, 1
            CALL CIN   
            
            MOV CX, -1
            MOV AX, BX
            MUL CX
            MOV BX, AX 
            RET
            
             
        ELSE:        
            MOV AH, 0  
            SUB AL, 30H
            MOV CX, 10
            MUL CX   
            MOV BX, AX
            
            MOV CX, 1
            CALL CIN
                    
        
        
        RET
    SCAN ENDP                
               
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX 
        
        CALL SCAN
        MOV A, BX
                    
        CALL SCAN
        MOV B, BX
        
        CALL SCAN
        MOV C, BX
        
        MOV AX, A
        MOV BX, B
        MOV CX, C
        
        CMP AX, BX
        
        JLE ELSE2  
        
            CMP AX, CX
            JLE ELSE3  
                MOV DL, OFFSET M1
                MOV AH, 09H
                INT 21H
                JMP EXIT
                
            ELSE3: 
                MOV DL, OFFSET M3
                MOV AH, 09H
                INT 21H
                JMP EXIT 
                
                          
        ELSE2:          
            CMP BX, CX
            JLE ELSE4  
                MOV DL, OFFSET M2
                MOV AH, 09H
                INT 21H
                JMP EXIT
                
            ELSE4: 
                MOV DL, OFFSET M3
                MOV AH, 09H
                INT 21H
                JMP EXIT
                           
        
        EXIT:               
                 
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
END MAIN    
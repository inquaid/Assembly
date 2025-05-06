.MODEL SMALL
.STACK 100H

.DATA
    A DW ?  
    B DW ?   
    I DW ? 
    J DW ?
    A1 DW 10, 20, 30, 40, 50, 60
    A2 DW 1, 2, 3, 4, 5         
    A3 DW 0, 0, 0, 0, 0
    CNT DW 6
    

.CODE            

    PRINT PROC
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
            
    PRINT ENDP    
    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX    
        
        MOV CX, 2
        MOV AX, CNT
        DIV CX 
                 
        MOV CX, AX
        MOV SI, OFFSET A1      
        MOV I, 0 
        MOV AX, CNT
        MOV J, AX   
        ;DEC J
    L1:
  
        DEC J     
        MOV SI, OFFSET A1
        
        
        MOV BX, I
        SHL BX, 1
        ADD SI, BX
        MOV AX, [SI]
        MOV A, AX
             
        
                   
        
        MOV SI, OFFSET A1
        MOV BX, J
        SHL BX, 1
        ADD SI, BX
        MOV AX, [SI]
        MOV B, AX   
        MOV AX, A
        MOV [SI], AX
        
        MOV SI, OFFSET A1
        MOV BX, I
        SHL BX, 1
        ADD SI, BX      
        MOV AX, B
        MOV [SI], AX
           
        
        INC I    
        LOOP L1             
                         
        MOV SI, OFFSET A1                 
        MOV CX, CNT
    L2:
        MOV BX, [SI]
        
        ADD SI, 2
        MOV A, CX
        
        MOV CX, 10
        CALL PRINT
        MOV CX, 1
        CALL PRINT
        
        MOV BX, 0AH
        SUB BX, 30H
        CALL PRINT
        
        MOV BX, 0DH
        SUB BX, 30H
        CALL PRINT
                    
        MOV CX, A            
        
        LOOP L2                     
                         
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
END MAIN    
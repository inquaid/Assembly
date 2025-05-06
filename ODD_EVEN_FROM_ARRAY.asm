.MODEL SMALL
.STACK 100H

.DATA
    A DW ?      
    ary DB 1, 2, 3, 4, 5
    arr DW 10, 23, 31, 40, 50, 63, 0, 0, 0  
    x DW 60          
    arr_cnt dw 6      
    
    even DW 0, 0, 0, 0, 0
    odd DW 0, 0, 0, 0, 0
    ec DW 0
    oc DW 0            
    M1 DW "EVENS ARE: $"  
    M2 DW "ODDS ARE: $"
    

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
          
        
        MOV SI, OFFSET arr
        
        MOV CX, arr_cnt
    L1: 
        MOV AX, [SI]
        ADD SI, 2
        MOV A, AX
        
        MOV BX, 1
        AND BX, AX   
        
        MOV DX, SI    
        
        CMP BX, 1     
        JE ODD_SEGMENT:
            MOV SI, OFFSET even
            MOV BX, ec
            SHL BX, 1
            ADD SI, BX
            MOV AX, A
            MOV [SI], AX               
            INC ec               
            
            JMP END_SEGMENT:
        
        ODD_SEGMENT:
            MOV SI, OFFSET odd
            MOV BX, oc
            SHL BX, 1
            ADD SI, BX
            MOV AX, A
            MOV [SI], AX
            INC oc          
                            
        
        END_SEGMENT:                        
        
                    
                  
        MOV SI, DX
        
            LOOP L1
        
        MOV DX, OFFSET M1
        MOV AH, 09H
        INT 21H                            
                     
        MOV CX, ec
        MOV SI, OFFSET even
        
    L2:
        MOV AX, [SI]
        ADD SI, 2
        MOV A, AX     
        
        MOV A, CX
        
        MOV BX, AX
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
        
        MOV DX, OFFSET M2
        MOV AH, 09H
        INT 21H    
        
        MOV CX, oc
        MOV SI, OFFSET odd
    L3:
        MOV AX, [SI]
        ADD SI, 2
        MOV A, AX     
        
        MOV A, CX
        
        MOV BX, AX
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
        
        LOOP L3            
                         
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
END MAIN    
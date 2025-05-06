.MODEL SMALL
.STACK 100H

.DATA
    A DW ?      
    ary DB 1, 2, 3, 4, 5
    arr DW 10, 20, 30, 40, 50, 0, 0, 0, 0  
    x DW 160          
    arr_cnt DW 5

.CODE 
    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX    
        
        MOV BX, arr_cnt
        MOV AX, x
         
        MOV SI, OFFSET arr
        SHL BX, 1
        ADD SI, BX
        
        MOV [SI], AX
        INC arr_cnt
        
        ADD AX, 40
        ADD SI, 2
        
        MOV [SI], AX 
        INC arr_cnt        
                                  
                           
        MOV CX, arr_cnt  
        MOV SI, OFFSET arr
        
     L1:
        MOV AX, [SI]
        MOV A, AX
        ADD SI, 2
                                 
            LOOP L1:                        
        
                         
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
END MAIN    
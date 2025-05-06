.MODEL SMALL
.STACK 100H

.DATA
    A DW ?      
    ary DB 1, 2, 3, 4, 5
    arr DW 10, 20, 30, 40, 50

.CODE 
    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
                               
        MOV CX, 5
        MOV SI, OFFSET arr
        MOV AX, 0
        
    SUM_LOOP:
        ADD AX, [SI]
        ADD SI, 2        
            LOOP SUM_LOOP:
                         
                         
        MOV A, AX
                         
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
END MAIN    
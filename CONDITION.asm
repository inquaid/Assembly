.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    NUM1 DW 7
    NUM2 DW 15
    NUM1_MSG DB 'NUM1 is greater$', 0
    NUM2_MSG DB 'NUM2 is greater$', 0       
    ELSE_MSG DB 'ELSE PART$', 0           
    IF_MSG   DB 'IF PART$', 0
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX        
        
        MOV AX, NUM1
        MOV BX, NUM2
        
        CMP AX, BX
        JG GREATER      ; IF AX > BX, JUMP TO GREATER
        
        ; CODE FOR 'ELSE' CASE
        
        MOV AH, 09H    ; PRINT SOMETHING FOR 'ELSE'
        LEA DX, ELSE_MSG
        INT 21H
        JMP END_IF
        
        GREATER:
        
        ; CODE FOR 'IF' CASE
        MOV AH, 09H
        LEA DX, IF_MSG       
        INT 21H
               
        END_IF:
        
        ; CODE RESUMES HERE       

    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
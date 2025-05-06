.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    NUM1 DW '53424543'  
    STR DB 'HELLO WORLD!$', 0
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
  	  
        LEA DX, STR
        MOV AH, 09H
        INT 21H
            
            

    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
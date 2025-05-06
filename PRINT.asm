.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    NUM1 DB 5
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
  	  
            ; add your code here
            MOV AL, NUM1
            ADD AL, '0' 
            
            MOV AH, 02H
            MOV DL, AL
            INT 21H

    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DB 5
    NUM2 DB 3
    RES DB ?

.CODE
    MAIN PROC    
        MOV AX, @DATA
        MOV DS, AX

      MOV AL, NUM1
      ADD AL, NUM2
      MOV RES, AL
      ADD AL, '0'   
      
      MOV AH, 02H
      
      MOV DL, RES
      INT 21H
      
             
    
MOV AX, 4CH
INT 21H
MAIN ENDP
END MAIN    
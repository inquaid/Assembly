.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    CHAR DB ?
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
  	  
        MOV AH, 01H     ; DOS INTERRUPT FOR INPUT
        INT 21H
        MOV CHAR, AL    ; STORE INPUT IN 'CHAR'
        
        MOV AH, 02H     ; DOS INTERRUPT TO DISPLAY CHARACTER   
        INT 21H
        MOV CHAR, AL
        
        MOV AH, 02H
        MOV DL, CHAR
        INT 21H
  
    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
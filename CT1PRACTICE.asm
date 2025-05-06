.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    STR DB "CAT$", 0
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX          
        
        ; INPUT
        MOV AH, 01H
        INT 21H    
        MOV BL, AL
        
        ; CRET (CARRIAGE RETURN) [CURSOR RETURN]          
        MOV DL, 0DH
        MOV AH, 02H
        INT 21H
        
        ; NEWL NEWLINE
        MOV DL, 0AH
        MOV AH, 02H
        INT 21H
        
        
        MOV DL, BL
        MOV AH, 02H
        INT 21H
           
        
  	      
  	  ; OUTPUT STRING, CHAR
  	    ; MOV AH, 09H
  	    ; MOV DL,  'C'
  	    ; LEA DX, STR
  	    
  	    ; INT 21H   

            
            

    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    A DW 1
    RES DW ?
.CODE  
    
    READ PROC
        MOV AH, 01H
        INT 21H
        SUB AL, 30H
        MOV AH, 0
        
        ADD BX, AX
        MOV AX, BX
        MUL CX     
        MOV BX, AX
        RET
    READ ENDP   
    
    PRINT PROC
        MOV AX, BX
        MOV DX, 0
        DIV CX    
        MOV AH, 0
        MOV BX, DX
        MOV DX, AX 
        ADD DL, 30H
        MOV DH, 0  
        
        MOV AH, 02H
        INT 21H    
        
        CMP CX, 1
        JNE EXT
            MOV DX, 0AH
            MOV AH, 02H
            INT 21H
            
            MOV DX, 0DH
            MOV AH, 02H
            INT 21H 
        
        EXT:     
        
        RET
    PRINT ENDP    

    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
  	    
  	    MOV CX, 20
  	    
  	    START:     
  	        MOV AX, A
            AND AX, 1    	        
  	        CMP AL, 1
  	        
  	        JE NEXT
  	              MOV BX, A 
  	              MOV RES, CX
  	              MOV CX, 10
  	              CALL PRINT
  	              
  	              MOV CX, 1
  	              CALL PRINT
  	              
  	              MOV CX, RES
  	        
  	        NEXT: 
  	        
  	        INC A
  	        
  	    LOOP START    
        
    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
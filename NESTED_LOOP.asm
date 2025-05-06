.MODEL SMALL
.STACK 100H

.DATA
    ; DATA SEGMENT        
    X DW 2
    N DW 5 
    CNT DW ?  
    TEMP DW ?  
    RES DW 0
    
.CODE
    PRINT PROC
        MOV AX, BX
        MOV DX, 0
        DIV CX
        MOV BX, DX
        MOV DX, AX
        
        ADD DX, 30H
        MOV AH, 02H
        INT 21H
        
        CMP CX, 1
        JNE EXT
            MOV DX, 0DH
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
  	    
  	    MOV CX, N
  	    
  	    MOV CNT, 1
  	    
  	    START:  
  	        MOV TEMP, CX
  	        
  	        MOV CX, CNT
  	        MOV AX, 1
  	        S_START: 
  	            MUL X
  	        LOOP S_START
  	        
  	        MUL CNT
  	        MOV DX, RES
  	        ADD DX, AX
  	        MOV RES, DX 
  	        INC CNT
  	        MOV CX, TEMP
  	        
  	    LOOP START

            
            

    
    MOV AX, 4CH
    INT 21H
MAIN ENDP
END MAIN    
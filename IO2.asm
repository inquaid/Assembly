.model small
.stack 100h

.data
    char DB 'A FOR APPLE', '$'

.code
main proc        
    
    MOV AX, @data
    MOV DS, AX
    
    MOV AH, 09H
    LEA DX, char
    INT 21H
                
                
   MOV AH, 4CH
   INT 21H
MAIN ENDP
END MAIN             

            
 
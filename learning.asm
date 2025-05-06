.model small
.stack 100h
.data
    msg DB "Hello, 8086!", 0Dh, 0Ah, "$" 
    ; DB define byte
    ; 0Ah newline
    ; $ is the termination character
    
    
.code
main proc
    MOV AX, 5
    ADD AX, 10
    
    MOV BX, OFFSET msg ; loading the address of msz into bx
    
    MOV CX, 5 ; loop
print_loop:
    MOV AH, 2        
    MOV DL, '*'
    INT 21h
    LOOP print_loop
    
    MOV AH, 9
    MOV DX, BX
    INT 21h
    
    HLT
    
main endp
end main
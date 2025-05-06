.model small
.stack 100h

.data

.code
main proc
    MOV AX, 1234h
    MOV BX, 4562h
    MOV CX, BX
    MOV DX, AX
    
    HLT
    
main endp
end main
.model small
.stack 100h

.code

main proc
    mov ah,1
    int 21h
    mov bl,al
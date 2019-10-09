;program to print A-Z alphabets
dosseg
.model small
.stack 100h
.data
.code
main proc

mov cx,26
mov bl,65
l1:
mov ah,2
mov dl,bl
int 21h
inc bl
mov dl,10
int 21h
mov dl,13
int 21h
loop l1

mov ah,4ch
int 21h

main endp
End main

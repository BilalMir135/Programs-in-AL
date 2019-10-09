;sum of two numbers
dosseg
.model small
.stack 100h
.data
.code
main proc

mov bl,2
mov cl,3
Add bl,cl
Add bl,48
mov dl,bl
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
End main

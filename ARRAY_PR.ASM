;Program to print an array
dosseg
.model small
.stack 100h
.data
arr db 'a','b','c'
.code
main proc
mov ax,@data
mov ds,ax
mov si,offset arr
mov cx,3
mov ah,2
l1:
mov dl,[si]
int 21h
mov dl,10
int 21h
mov dl,13
int 21h
inc si
loop l1

mov ah,4ch
int 21h

main endp
End main


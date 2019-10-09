;variables in AL
dosseg
.model small
.stack 100h
.data
var1 db '1'
var2 db ?
var3 db 'hello$'
.code
main proc
mov ax,@data
mov ds,ax

mov dl,var1
mov ah,2
int 21h

mov bl,3
mov var2,bl
mov ah,2
int 21h

mov dx,offset var3
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
End main

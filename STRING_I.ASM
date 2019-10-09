;Program to take string as an input from user
dosseg
.model small
.stack 100h
.data
arr1 db 50 Dup('$')
.code
main proc

mov ax,@data
mov ds,ax
mov si,offset arr1
l1:
mov ah,1
int 21h
cmp al,13
je program_end
mov [si],al
Inc si
jmp l1

program_end:
mov dx,offset arr1
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
End main

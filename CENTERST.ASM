;Program to print string at the center of screen
dosseg
.model small
.stack 100h
.data
s1 db 'Bilal Mir$'
.code

main proc

mov ax,@data
mov ds,ax
mov si,offset s1
mov cx,0     ;count the length of string
mov dl,'$'

r:
cmp [si],dl
je done
jne count

count:
inc cx
inc si
jmp r

done:
mov ax, cx
mov bl,2
div bl         ;divide length of string by 2 to get the half

mov ah,2
mov dh,11
mov dl,38
sub dl,al            ;here al is the quotient
int 10h


mov ah,9
mov dx,offset s1
int 21h

mov ah,4ch
int 21h

main endp
end main

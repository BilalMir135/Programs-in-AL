;Progarm to count the user input charater in a string
dosseg
.model small
.stack 100h
.data
s1 db 'Assembly Language'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,1
int 21h
mov dl,'$'
mov cl,0
mov si,offset s1
r:
cmp dl,[si]
je e
cmp al,[si]
je l1
jne l2
l1:
inc cl
l2:
inc si
jmp r

e:
add cl,48
mov dl,cl
mov ah,2
int 21h
mov ah,4ch
int 21h


main endp
end main

;Program to check whether the entered char is a number or not
dosseg
.model small
.stack 100h
.data
s1 db '0123456789$'
s2 db 'Number$'
.code
main proc
mov ax,@data
mov ds,ax
mov cl,0
mov ah,1
int 21h
mov dl,'$'
a:
mov si, offset s1
r:      ;repeat searching 
cmp dl,[si]
je c
cmp al,[si]
je l1
jne l2

l1:   ;if the character is a num
inc cl
mov dx, offset s2
mov ah,9
int 21h
jmp c

l2:   ;if not then do increment in address 
inc si
jmp r

c:    ;End of searching and returning the cursor
cmp cl,0
je z
mov ah,4ch
int 21h

z:     ;If the character is not in num array at the end of searching than it is not a number
mov ah,1
int 21h
jmp a

main endp
end main

;Program to check the character is vowel
dosseg
.model small
.stack 100h
.data
s1 db 'AEIOUaeiou$'
s2 db 'Vowel$'
s3 db 'Consonant$'
.code
main proc
mov ax,@data
mov ds,ax
mov cl,0
mov ah,1
int 21h
mov si, offset s1
mov dl,'$'

r:      ;repeat searching 
cmp dl,[si]
je c
cmp al,[si]
je l1
jne l2

l1:   ;if the character is vowel
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

z:     ;If the character is not in vowel array at the end of searching than it is a consonant
dec cl
mov dx, offset s3
mov ah,9
int 21h
jmp c

main endp
end main

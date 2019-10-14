;Ptogram of swapping two numbers using stack
dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah,1
int 21h
push ax

int 21h
push ax

mov ah,2
pop dx
int 21h

pop dx
int 21h

mov ah,4ch
int 21h

main endp
End main

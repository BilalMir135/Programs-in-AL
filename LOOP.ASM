;print 0-9 by using loop
dosseg
.model small
.stack 100h
.data
.code
main proc

mov cx,10
mov bl,48

myloop:

mov dl,bl
mov ah,2
int 21h
;add dl,1
inc bl  ;increment

mov dl,10
int 21h

mov dl,13
int 21h

loop  myloop

mov ah,4ch
int 21h

main endp
End main

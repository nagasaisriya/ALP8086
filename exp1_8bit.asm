data segment 
b db 0fh 
c db 02h 
d db 04h 
e db 02h 
a db ? 
data ends 
Assume cs:code,ds:data 
code segment 
start: mov ax,data 
 mov ds,ax 
 xor ax,ax 
 xor bx,bx 
 xor dx,dx 
 mov al,d 
 mov bl,e 
 mul bl 
 mov bl,b 
 mov dl,c 
 add bl,dl 
 sub bl,al 
 mov a,bl 
 mov ah,4ch 
 int 21h 
 code ends 
 end start 

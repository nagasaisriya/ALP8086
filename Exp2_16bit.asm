data segment 
x dw 0032h 
y dw 0033h 
w dw 0034h 
v dw 0035h 
u dw 0038h 
k db 02h 
z dw ? 
data ends 
assume ds:data, cs:code 
code segment 
start: mov ax,data 
 mov ds,ax 
 xor ax,ax 
 xor bx,bx 
 xor dx,dx 
 mov ax,x 
 mov bx,y 
 mul bx 
 mov dx,ax 
 mov ax,u 
 mov bl,k 
 div bl 
 mov bx,w 
 add dx,bx 
 mov bx,v 
 sub dx,bx 
 add dx,ax 
 mov z,dx 
 mov ah,4ch
 int 21h 
 code ends 
 end start

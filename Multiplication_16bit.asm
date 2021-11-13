data segment 
num1 dw 1234h 
num2 dw 5678h 
res1 dw ? 
res2 dw ? 
data ends 
Assume cs:code,ds:data 
code segment 
start: mov ax,data 
 mov ds,ax 
 mov ax,num1 
 mov bx,num2 
 mul bx 
 mov res1,ax 
 mov res2,dx 
 mov ah,4ch 
 int 21h 
 code ends 
 end start

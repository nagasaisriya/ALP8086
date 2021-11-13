data segment 
a dw 0009h 
b db 03h 
quo db ? 
rem db ? 
data ends 
Assume cs:code,ds:data 
code segment 
start:mov ax,data 
 mov ds,ax 
 mov ax,a 
 mov bl,b 
 div bl 
 mov quo,al 
 mov rem,ah 
 mov ah,4ch 
 int 21h 
 code ends
 end start 

data segment 
num1 db 02h 
num2 db 03h 
res dw ? 
data ends 
Assume cs:code,ds:data 
code segment 
start:mov ax,data 
 mov ds,ax 
 mov al,num1 
 mov bl,num2 
 mul bl 
 mov res,ax 
 mov ah,4ah 
 int 21h 
 code ends 
 end start 

data segment 
num1 dw 0abcdh 
num2 dw 39fch 
res dw ? 
data ends 
Assume cs:code,ds:data 
code segment 
start: mov ax,data 
mov ds,ax 
mov ax,num1 
mov bx,num2 
add ax,bx 
mov res,ax 
mov ah,4ch 
int 21h 
code ends 
end start

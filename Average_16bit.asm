data segment 
list dw 0003h,0052h,0033h 
count equ 03h 
avg dw ? 
data ends 
assume cs:code,ds:data 
code segment 
start:mov ax,data 
 mov ds,ax 
 xor ax,ax 
 xor cx,cx 
 xor bx,bx 
 clc 
 mov bx,count-1 
 mov si,offset list
 mov ax,[si] 
up: adc ax,[si+2] 
 inc si 
 dec bx 
 jnz up 
 mov bx,count 
 div bx 
 mov avg,ax 
 mov ah,4ch 
 int 21h 
 code ends 
 end start 

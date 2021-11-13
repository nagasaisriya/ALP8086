data segment 
list db 05h,06h,07h,08h 
count equ 04h 
avg db ? 
data ends 
Assume cs:code,ds:data 
code segment 
start:mov ax,data 
 mov ds,ax 
 xor ax,ax 
 xor bx,bx 
 clc 
 mov bl,count-1 
 mov si,offset list 
 mov al,[si] 
 up:adc al,[si+1] 
 inc si 
 dec bl 
 jnz up 
 mov bl,count 
 div bl 
 mov avg,al 
 mov ah,4ch 
 int 21h 
 code ends 
 end start 

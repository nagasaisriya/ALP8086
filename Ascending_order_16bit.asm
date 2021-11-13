data segment 
list dw 0015h,0003h,0021h 
count equ 03h 
data ends 
assume cs:code,ds:data 
code segment 
start: mov ax,data 
 mov ds,ax 
 xor ax,ax 
 xor dx,dx 
 xor cx,cx 
 mov dx,count-1 
again0:mov cx,dx 
 mov si,offset list 
again1:mov ax,[si] 
 cmp ax,[si+2] 
 jb pr1 
 xchg [si+2],ax 
 xchg [si],ax 
 pr1:inc si 
 loop again1 
 dec dx
 jnz again0 
 mov ah,4ch 
 int 21h 
 code ends 
 end start 

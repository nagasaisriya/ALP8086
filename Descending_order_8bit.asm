Assume cs:code,ds:data 
data segment 
list db 02h,19h,25h,53h 
count equ 04h 
data ends 
code segment 
start:mov ax,data 
 mov ds,ax 
 xor dx,dx 
 xor cx,cx 
 mov dl,count-1 
again0:mov cl,dl 
 mov si,offset list 
again1:mov al,[si] 
 cmp al,[si+1] 
 JA pri 
 xchg [si+1],al 
 xchg [si],al 
pri: inc si 
 loop again1 
 dec dl 
 JNZ again0 
 mov ah,4ch 
 int 21h 
 code ends 
 end start 

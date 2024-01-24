mov ah, 0x0e ; scrolling teletype BIOS routine

mov bp, 0x8000
mov sp, bp

mov cx, 5

push 'S'
push 'e'
push 'm'
push 'i'
push 'x'

print: 
   pop bx
   mov al, bl
   int 0x10
   add cx, -1
   cmp cx, 0
   jne print

jmp $

times   510-($-$$)   db   0
dw   0xaa55
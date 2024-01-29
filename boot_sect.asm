[org 0x7c00] 
   mov dx ,0x1376 
   call print_hex
   jmp $ 

%include "print.asm"

HEX_OUT : db '0x0000' ,0

times 510 -($-$$) db 0
dw 0xaa55
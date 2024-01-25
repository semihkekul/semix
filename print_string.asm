; print_string :
;     pusha ; Push all register values to the stack

;     print: 
;         pop bx
;         cmp bx, 0
;         je exit
;         mov al, bl
;         int 0x10 ; print the character in al
;         jmp print

;     exit:    
;         popa ; Restore original register values
;         ret
print_string:
    pusha
    pop bx
    mov al, bl
    mov ah , 0x0e
    int 0x10
    popa
    ret
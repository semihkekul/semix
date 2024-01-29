print_string:
    print:
        mov al, [bx]
        add bx, 1
        cmp al, 0
        je exit
        mov ah , 0x0e
        int 0x10
        jmp print
    exit:
        ret

print_hex:
    xchg bx, bx
    mov ax, 0x0
    mov cx, 0x0
    
    compare:
        mov bx, dx
        and bx, 0x0001
        mov cl , '1'
        cmp bx, 0x0001
        je next

        mov bx, dx
        and bx, 0x0002
        mov cl , '2'
        cmp bx, 0x0002
        je next

        mov bx, dx
        and bx, 0x0003
        mov cl , '3'
        cmp bx, 0x0003
        je next
        
        mov bx, dx
        and bx, 0x0004
        mov cl , '4'
        cmp bx, 0x0004
        je next

        mov bx, dx
        and bx, 0x0005
        mov cl , '5'
        cmp bx, 0x0005
        je next

        mov bx, dx
        and bx, 0x0006
        mov cl , '6'
        cmp bx, 0x0006
        je next

        mov bx, dx
        and bx, 0x0007
        mov cl , '7'
        cmp bx, 0x0007
        je next
        
        mov bx, dx
        and bx, 0x0007
        mov cl , '7'
        cmp bx, 0x0007
        je next


    next:
        xchg bx, bx
        mov [HEX_OUT], cl 
        add al, 1
        cmp al, 4
        je done
        shr dx, 1
        jmp compare

    done:

        mov bx ,HEX_OUT ; print the string pointed to
        jmp print_string
        ret

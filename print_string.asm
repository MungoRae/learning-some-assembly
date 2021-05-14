
print_string:
    pusha
    mov ah, 0x0e
    jmp print_chars

print_chars:
    mov al, [bx]
    cmp al, 0
    je finish

    int 0x10
    add bx, 0x1
    jmp print_chars

finish:
    popa
    ret

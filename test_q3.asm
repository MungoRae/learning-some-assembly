[org 0x7c00]

mov ah, 0x0e

mov bx, 50

cmp bx, 4
jle do_a
cmp bx, 40
jl do_b
jmp do_c

do_a:
mov al, 'A'
jmp finished

do_b:
mov al, 'B'
jmp finished

do_c:
mov al, 'C'

finished:
int 0x10

jmp $

times 510-($-$$ ) db 0
dw 0xaa55

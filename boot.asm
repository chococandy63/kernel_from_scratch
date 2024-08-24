; real mode assembly code
ORG 0x7C00 ; origin of the program; BIOS loads us to address 0x7C00, we can set assembled to this address
BITS 16 ; tell assembler that we are using 16-bit architecture

start:
    mov si, message ; si is source index; message is label
    call print ; call print function
    jmp $ ; infinite loop

print:
    mov bx, 0 ; page number; bx register
.loop:
    lodsb ; load string byte; load byte from si to al; si is source index
    cmp al, 0 ; compare al to 0
    je .done ; jump if equal to done
    call print_char ; call print_char function
    jmp .loop ; jump to loop
.done:
    ret

print_char: 
    mov ah, 0eh ; function to print character, ah is register that holds function number
    int 0x10 ; interrupt was calling BIOS; calling BIOS routine; this routine outputs 'A' to terminal (0eh is command to print a character)
    ret

message db 'Hey, read "The Pleasure of Finding Things Out" by Sir Richard Feynman', 0 ; define message string with null terminator
times 510- ($ - $$) db 0 ; fill at least 510 bytes of data and fill the rest of the sector with 0s
dw 0xAA55 ; dw is assemble word; add boot signature

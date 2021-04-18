org 1000h
mov ax, cs
mov ds, ax
mov es, ax
mov ax, 0x00
mov ss, ax
mov sp, 0x7c00
;===display on screen
mov ax, 1301h
mov bx, 000fh
mov dx, 0200h
mov cx, 12
push ax
mov ax, ds
mov es, ax
pop ax
mov bp, StartLoaderMessage
int 10h 
jmp $
;=== display message
StartLoaderMessage: db "Start Loader..."
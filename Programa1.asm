title Demostracion mov
model small
stack 256
dataseg

exCode db 0
speed db 99

codeseg

start:
mov ax,@data
mov ds, ax
mov ax, 1
mov bx, 2
mov cx, 3
mov dx, 4
mov ah, [speed]
mov si, offset speed
exit:
mov ah, 04ch
mov al,[exCode]
int 21h
end start
title "demostracion de mul, div, imul, idiv"
	model small
	stack 256
	dataseg
exCode db 0
opByte db 8
opWord	dw 100
sourceByte db 64
sourceWord dw 4000
	codeseg
Start:
	mov ax, @data
	mov ds, ax
	mov al,[opByte]
	mul [sourceByte]
	mov ax,[opWord]
	mul [sourceWord]
	mov ax,[opWord]
	mul ax
	mov ax,[opWord]
	div [sourceByte]
	mov ax, [opWord]
	mov dx, [opWord]
	div [sourceWord]
	mov al, [sourceByte]
	cbw
	mov ax, [sourceWord]
	cwd
Exit:
	mov ah, 04ch
	mov al, [exCode]
	int 21h
	end start
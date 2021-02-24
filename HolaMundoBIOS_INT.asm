
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;INT 10h / AH = 13h - write string.
;
;input:
;AL = write mode:
;    bit 0: update cursor after writing;
;    bit 1: string contains attributes.
;BH = page number.
;BL = attribute if string contains only characters (bit 1 of AL is zero).
;CX = number of characters in string (attributes are not counted).
;DL,DH = column, row at which to start writing.
;ES:BP points to string to be printed.
org 100h  
mov al, 1
	mov bh, 0   ; bh=numero de pagina
	mov bl, 0011_1011b   ; Atributo de colores
	mov cx, msg1end - offset msg1 ; calculate message size. 
	mov dl, 10
	mov dh, 7
	push cs ;Mete cs en la pila
	pop es  ;Mete en es el valor de cs
	mov bp, offset msg1  ;ES:BP points to string to be printed.
	mov ah, 13h  ; Para escribir
	int 10h      ; Interupcion BIOS
	jmp msg1end
	msg1 db " hello, world! "
	msg1end:




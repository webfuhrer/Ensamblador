
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h  
parte1:
  mov ax, 2h
  call parte2     ; call guarda por donde iba (IP) y luego vuelve. jmp no vuelve
  add ax, 2h
ret

parte2:
    add ax, 2h
ret




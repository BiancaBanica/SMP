
w equ 200 ; dimensiune dreptunghi
h equ 100

art:    mov dx, msg1 
        mov ah, 09h
        int 21h    

         
getnum:       
        mov ah, 7
        int 21h       
        cmp al, '1'
        jl  getnum  
        cmp al, '3'
        jg  getnum

        cmp al, '1'
        je code       
        cmp al, '2'
        je code1
                         
ret

msg1:   db      "Please select an item:",0Dh,0Ah,0Dh,0Ah,09h
        db      "Apasa 1 pt patrat",0Dh,0Ah,09h
        db      "Apasa 2 pentru suma",0Dh,0Ah,09h     
        db      "Alege varianta 1 sau 2: "
        db      '$'
ret

 code:


;mov ax, @data
mov ds, ax
mov es, ax
; seteaza mod video
mov ah, 0
mov al, 03h
int 10h

mov al, 0             
mov ah, 6   

mov bh, 0h ;seteaza culoare patrat-negru
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h     

mov dh, 8
mov dl, 20
mov bh, 0ffh ;seteaza culoare patrat-alb
int 10h     

directie:
mov ah, 1
int 21h
cmp al, 'e' ; tasta e= exit
je exit
cmp al, 'd' ; tasta d = muta catre dreapta pana ajunge in pozitia initiala
je dreapta 
cmp al, 's' ; tasta s = muta catre stanga pana ajunge in pozitia initiala
je stanga


dreapta:
mov al, 0             
mov ah, 6   

mov bh, 0h   ; muta patrat spre dreapta, schimband coordonatele 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h  
    
mov bh, 0ffh
mov ch, 0
mov cl, 20
mov dh, 8
mov dl, 40
int 10h
   
mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h
   
mov bh, 0ffh
mov ch, 0
mov cl, 40
mov dh, 8
mov dl, 60
int 10h    
   
mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h
  
mov bh, 0ffh
mov ch, 0
mov cl, 60
mov dh, 8
mov dl, 79
int 10h     
   
mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 
   
mov bh, 0ffh
mov ch, 8
mov cl, 60
mov dh, 16
mov dl, 79
int 10h   
   
mov bh, 0h
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h   
  
mov bh, 0ffh
mov ch, 16
mov cl, 60
mov dh, 24
mov dl, 79
int 10h
  
mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 
  
mov bh, 0ffh
mov ch, 16
mov cl, 40
mov dh, 24
mov dl, 60
int 10h
  
mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h
  
mov bh, 0ffh
mov ch, 16
mov cl, 20
mov dh, 24
mov dl, 40
int 10h
 
mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 
 
mov bh, 0ffh
mov ch, 16
mov cl, 0
mov dh, 24
mov dl, 20
int 10h  

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h

mov bh, 0ffh
mov ch, 8
mov cl, 0
mov dh, 16
mov dl, 20
int 10h 

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h

mov bh, 0ffh
mov ch, 0
mov cl, 0
mov dh, 8
mov dl, 20
int 10h 


mov dl, 07h ; sunet cand ajunge inapoi in pozitia initiala
mov ah, 2 
int 21h 


jmp directie

stanga:

mov al, 0             
mov ah, 6

mov bh, 0ffh   ; muta patrat spre stanga, schimband coordonatele 
mov ch, 0
mov cl, 0
mov dh, 8
mov dl, 20
int 10h 

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h

mov bh, 0ffh
mov ch, 8
mov cl, 0
mov dh, 16
mov dl, 20
int 10h 

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 
 
mov bh, 0ffh
mov ch, 16
mov cl, 0
mov dh, 24
mov dl, 20
int 10h 

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 

mov bh, 0ffh
mov ch, 16
mov cl, 20
mov dh, 24
mov dl, 40
int 10h 

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 

mov bh, 0ffh
mov ch, 16
mov cl, 40
mov dh, 24
mov dl, 60
int 10h

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 

mov bh, 0ffh
mov ch, 16
mov cl, 60
mov dh, 24
mov dl, 79
int 10h 

mov bh, 0h
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 

mov bh, 0ffh
mov ch, 8
mov cl, 60
mov dh, 16
mov dl, 79
int 10h

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h  

mov bh, 0ffh
mov ch, 0
mov cl, 60
mov dh, 8
mov dl, 79
int 10h 

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 

mov bh, 0ffh
mov ch, 0
mov cl, 40
mov dh, 8
mov dl, 60
int 10h

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h 

mov bh, 0ffh
mov ch, 0
mov cl, 20
mov dh, 8
mov dl, 40
int 10h 

mov bh, 0h 
mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79  
int 10h

mov dl, 07h ; sunet cand ajunge inapoi in pozitia initiala
mov ah, 2 
int 21h 


jmp directie


exit:
mov ax, 4c00h
int 21h  


ret  

code1: 


mov ah, 0
mov al, 13h ; trecere in mod grafic 320x200
int 10h
; afisare latura superioara
mov cx, 100+w ; coloana
mov dx, 20 ; rand
mov al, 15 ; alb
u1: mov ah, 0ch ; afisare pixel
int 10h
dec cx
cmp cx, 100
jae u1
; afisare latura inferioare
mov cx, 100+w
mov dx, 20+h
mov al, 15
u2: mov ah, 0ch
int 10h
dec cx
cmp cx, 100
ja u2
; latura din stanga
mov cx, 100
mov dx, 20+h
mov al, 15
u3: mov ah, 0ch
int 10h
dec dx
cmp dx, 20
ja u3
; latura din dreapta
mov cx, 100+w
mov dx, 20+h
mov al, 15
u4: mov ah, 0ch
int 10h
dec dx
cmp dx, 20
ja u4
; asteptare apasare tasta
;mov ah,00
;int 16h

MOV AH, 0Eh ; selectare subrutina afisare cod ASCII 
                                     
MOV AL, 'D' ; caracter de afisat
INT 10h ; apel rutina principala 
MOV AL, 'e'
INT 10h
MOV AL, 's'
INT 10h
MOV AL, 'e'
INT 10h
MOV AL, 'n'
INT 10h
MOV AL, 'e'
INT 10h 
MOV AL, 'a'
INT 10h 
MOV AL, 'z'
INT 10h 
MOV AL, 'a'
INT 10h 
MOV AL, ' '
INT 10h 
MOV AL, 'i'
INT 10h
MOV AL, 'n'
INT 10h 
MOV AL, ' '
INT 10h 
MOV AL, 'd'
INT 10h 
MOV AL, 'r'
INT 10h
MOV AL, 'e'
INT 10h
MOV AL, 'p'
INT 10h
MOV AL, 't'
INT 10h
MOV AL, 'u'
INT 10h
MOV AL, 'n'
INT 10h
MOV AL, 'g'
INT 10h
MOV AL, 'h'
INT 10h
MOV AL, 'i'
INT 10h
MOV AL, ' ' 
INT 10h 
MOV AL, 'c'
INT 10h 
MOV AL, 'u'
INT 10h 
MOV AL, ' '
INT 10h 
MOV AL, 'm'
INT 10h 
MOV AL, 'o'
INT 10h 
MOV AL, 'u'
INT 10h 
MOV AL, 's'
INT 10h 
MOV AL, 'e'
INT 10h
MOV AL, 'u'
INT 10h 
MOV AL, 'l'
INT 10h


jmp start
oldX dw -1
oldY dw 0
start:
;mov ah, 00
;mov al, 13h ; mod grafic 256 culori, 320x200 pixels
;int 10h 

mov ax, 0 ; initializare mouse
int 33h
cmp ax, 0
mov ax, 1 ; afisare cursor mouse optional
int 33h
check_mouse_button:
mov ax, 3
int 33h ; preluare pozitie si status butoane
shr cx, 1 ; x/2  in modul grafic este dublata coordonata x
cmp bx, 1
jne xor_cursor:
mov al, 1010b ; culoare punct
jmp draw_pixel
xor_cursor:
cmp oldX, -1
je not_required
push cx
push dx
mov cx, oldX
mov dx, oldY
mov ah, 0dh
int 10h
xor al, 1111b
mov ah, 0ch
int 10h
pop dx
pop cx
not_required:
mov ah, 0dh
int 10h
xor al, 1111b
mov oldX, cx
mov oldY, dx
draw_pixel:
mov ah, 0ch
int 10h
check_esc_key:
mov dl, 255
mov ah, 6
int 21h
cmp al, 27 ; esc?
jne check_mouse_button
stop:
;mov ax, 2 ; ascunde cursor mouse optional
;int 33h


ret
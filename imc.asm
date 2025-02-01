; Ensamblador MASM para Windows
; Este programa calcula el IMC a partir de la entrada del usuario

.386 
.stack 100h

.data 
    peso dd ?
    estatura dd ?
    imc dd ?
    ticket db "---------------------",0dh,0ah,"$"
    salto db 13,10,"$"
    
.code
main proc 
    ; Borra la pantalla
    mov ah,06h
    mov al,02h
    mov bh,07h
    xor cx,cx
    xor dx,dx
    mov dh,18
    int 10h
    
    ; Pide el peso en Kg
    mov ah,09h
    lea dx,[msgPeso]
    int 21h
    call read_int
    mov peso,eax
    
    ; Pide la estatura en m
    mov ah,09h
    lea dx,[msgEstatura]
    int 21h
    call read_float
    fld dword ptr [estatura]
    fistp dword ptr [estatura]
    
    ; Calcula el IMC
    fld peso
    fdiv st(1)
    fmul dword ptr [estatura]
    fistp imc
    
    ; Imprime el ticket
    mov ah,09h
    lea dx,[ticket]
    int 21h
    
    ; Imprime el peso
    mov ah,09h
    lea dx,[msgPeso2]
    int 21h
    call print_int
    mov ah,09h
    lea dx,salto
    int 21h
    
    ; Imprime la estatura
    mov ah,09h
    lea dx,[msgEstatura2]
    int 21h
    call print_float
    
    ; Imprime el IMC
    mov ah,09h
    lea dx,[msgIMC]
    int 21h
    call print_float
    
    exit: 
    mov ah,4ch
    int 21h
main endp

; Rutinas auxiliares de entrada/salida
read_int proc 
    ; Llama a la función para leer un entero desde el teclado y lo almacena en eax
    mov ah,0ah
    int 21h
    ret
read_int endp

print_int proc 
    ; Recibe en eax un entero a imprimir
    mov ah,09h
    lea dx,[msgInt]
    int 21h
    call print_dec
    mov ah,09h
    lea dx,salto
    int 21h
    ret
print_int endp

; Printing of a decimal number
print_dec:
    push eax
    xor edx,edx
    mov ecx,10
    mov ebx,eax
    print_loop:
        xor eax,eax
        div ecx  ; EAX = (EAX / ECX) and EDX = EAX modulo ECX.
        add dl,30h ; DL = ASCII digit
        push edx
        loop print_loop
    pop eax
    print_loop2:
        lodsb      ; get a byte from the string
        or al,al  ; check if we have reached the end of the string
        jz print_done
        mov ah,09h
        int 21h
        jmp print_loop2
    print_done:
    ret
print_dec endp

; Printing of a float number
print_float proc
    push eax
    push ebx
    push ecx
    fld dword ptr [eax]  ; put the float in the FPU stack
    fistp dword ptr [eax]  ; get an integer part from the float
    mov ecx,1000          ; we are using four digits for precision
    xor ebx,ebx           ; counter
    print_loop:
        fldcw word ptr [precision] ; set the rounding mode to truncate (downward)
        fdiv st(1),st(0)  ; compute the fractional part of the float
        fistp dword ptr [eax]   ; get an integer from the float
        add eax,ebx          ; adjust for decimal point
        cmp ebx,3            ; check if we have reached the end of the string
        jbe print_loop2
        mov ah,09h
        lea dx,[msgFloat]
        int 21h
        call print_dec
    print_done:
    pop ecx
    pop ebx
    pop eax
    ret
print_float endp

precision dw 3f800000h ; rounding mode = truncate (downward)
msgPeso   db "Ingrese el peso en Kg: ",0dh,0ah,"$"
msgEstatura db "Ingrese la estatura en m: ",0dh,0ah,"$"
msgPeso2  db "Peso: ",0dh,0ah,"$"
msgEstatura2 db "Estatura: ",0dh,0ah,"$"
msgIMC    db "IMC: ",0dh,0ah,"$"
msgFloat  db ".",0dh,0ah,"$"
msgInt    db 13 dup ("$")

end main

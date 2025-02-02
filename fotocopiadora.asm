section .data
    mensaje1 db "ingresa la cantidad de hojas por favor:", 0
    valorhoja dd 20
    descuento dd 0.90
    mensajebolata db "******Boleta********", 10
    mensajecantidad db "cantidad de hojas", 0
    mensajevalor db "el valor por hoja $20", 10
    mensajetotal db "el total es $", 0
    newline db 10, 0
    buffer resb 10
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
section .bss
    hojas resd 1
    total resd 1
section .text
    global _start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje1
    mov edx, 26
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 3
    mov ebx, 0
    mov ecx, buffer
    mov edx, 10
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov esi, buffer
    call string_to_int
    mov [hojas], eax
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax. [hojas]
    imul eax, [valorhoja]
    mov [total], eax
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    cmp eax, 600
    jle no_descuento
    fild dword [total]
    fmul dword [descuento]
    fistp dwordl [total]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
no_descuento:
    mov eax, 4
    mov ebx, 1
    mov ecx, mensajebolata
    mov edx, 18
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 4
    mov ebx, 1
    mov ecx, mensajecantidad
    mov edx, 13
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, [hojas]
    call string_to_int
    call print_int
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 4
    mov ebx, 1
    mov ecx, mensajevalor
    mov edx, 19
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 4
    mov ebx, 1
    mov ecx, mensajetotal
    mov edx, 8
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, [total]
    call int_to_string
    call print_print
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 1
    xor ebx, ebx
    int 0x80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
string_to_int:
    xor eax, eax
    xor ebx, ebx
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
convert_loop:
    movzx ecx, byte [esi]
    cmp ecx, 10
    je end_convert
    sub ecx, '0'
    imul eax, eax, 10
    add eax, ecx
    inc esi
    jmp convert_loop
end_convert:
    ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
int_to_string:
    mov ecx, buffer + 9
    mov byte [ecx], 0
    dec ecx
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
convert_number:
    xor edx, edx
    div dword [valorhoja]
    add dl, '0'
    mov [ecx], dl
    dec ecx
    test eax, eax
    jnz convert_number
    inc ecx
    mov esi, ecx
    ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
print_int:
    mov eax, 4
    mov ebx, 1
    mov edx, esi
    mov edx, 10
    int 0x80
    ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     

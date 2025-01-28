section .data
    mensaje1 db "Ingresa la cantidad de hojas: ", 0
    valor_hoja dd 20
    descuento dd 0.90
    mensaje_boleta db "----  BOLETA -----", 10
    mensaje_cant db "Cant. hojas: ", 0
    mensaje_valor db "Valor por hoja $20", 10
    mensaje_total db "TOTAL $", 0
    newline db 10, 0
    buffer resb 10  ; Buffer para almacenar entrada del usuario

section .bss
    hojas resd 1
    total resd 1

section .text
    global _start

_start:
    ; Mostrar mensaje1
    mov eax, 4          ; syscall write
    mov ebx, 1          ; stdout
    mov ecx, mensaje1
    mov edx, 26         ; Longitud del mensaje
    int 0x80

    ; Leer entrada del usuario
    mov eax, 3          ; syscall read
    mov ebx, 0          ; stdin
    mov ecx, buffer
    mov edx, 10
    int 0x80

    ; Convertir cadena a número
    mov esi, buffer
    call string_to_int
    mov [hojas], eax

    ; Calcular total = hojas * 20
    mov eax, [hojas]
    imul eax, [valor_hoja]
    mov [total], eax

    ; Aplicar descuento si hojas > 30
    cmp eax, 600        ; 30 * 20
    jle no_discount
    fild dword [total]  ; Cargar total en la FPU
    fmul dword [descuento]  ; Multiplicar por 0.90
    fistp dword [total] ; Guardar resultado en total

no_discount:
    ; Mostrar boleta
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje_boleta
    mov edx, 18
    int 0x80

    ; Mostrar "Cant. hojas: "
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje_cant
    mov edx, 13
    int 0x80

    ; Convertir hojas a string y mostrar
    mov eax, [hojas]
    call int_to_string
    call print_string

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Mostrar "Valor por hoja $20"
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje_valor
    mov edx, 19
    int 0x80

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Mostrar "TOTAL $"
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje_total
    mov edx, 8
    int 0x80

    ; Convertir total a string y mostrar
    mov eax, [total]
    call int_to_string
    call print_string

    ; Salir del programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

; ---- Función: string_to_int ----
string_to_int:
    xor eax, eax
    xor ebx, ebx
convert_loop:
    movzx ecx, byte [esi]  ; Cargar caracter
    cmp ecx, 10            ; Si es salto de línea, salir
    je end_convert
    sub ecx, '0'           ; Convertir ASCII a número
    imul eax, eax, 10
    add eax, ecx
    inc esi
    jmp convert_loop
end_convert:
    ret

; ---- Función: int_to_string ----
int_to_string:
    mov ecx, buffer + 9
    mov byte [ecx], 0
    dec ecx
convert_number:
    xor edx, edx
    div dword [valor_hoja]
    add dl, '0'
    mov [ecx], dl
    dec ecx
    test eax, eax
    jnz convert_number
    inc ecx
    mov esi, ecx
    ret

; ---- Función: print_string ----
print_string:
    mov eax, 4
    mov ebx, 1
    mov ecx, esi
    mov edx, 10
    int 0x80
    ret


section .data
    mensaje_ingreso db "Ingrese nota: ", 0
    mensaje_suma db "La suma es: ", 0
    mensaje_promedio db "Promedio: ", 0
    mensaje_estado_aprobado db "Estado: APROBADO", 0
    mensaje_estado_reprobado db "Estado: REPROBADO", 0
    newline db 10, 0

section .bss
    nota resb 10
    suma resd 1
    promedio resd 1

section .text
    global _start

_start:
    ; Aquí iría la lógica para leer entrada, sumarla y calcular el promedio
    ; Luego imprimiría el resultado usando syscalls de Linux
    ; Como es un código extenso, lo podemos dividir en funciones

    ; Terminamos el programa
    mov eax, 1   ; syscall exit
    xor ebx, ebx ; código de salida 0
    int 0x80

section .data
    mensaje_ingreso db "Ingrese nota: ", 0
    mensaje_suma db "La suma es: ", 0
    mensaje_promedio db "Promedio: ", 0
    mensaje_estado_aprobado db "Estado: APROBADO", 0
    mensaje_estado_reprobado db "Estado: REPROBADO", 0
    newline db 10, 0

section .bss
    nota resb 10
    suma resq 1
    promedio resq 1

section .text
    global _start

_start:
    ; Aquí iría la lógica para leer entrada, sumarla y calcular el promedio
    ; Luego imprimiría el resultado usando syscalls de Linux

    ; Terminamos el programa
    mov rax, 60  ; syscall exit
    xor rdi, rdi ; código de salida 0
    syscall

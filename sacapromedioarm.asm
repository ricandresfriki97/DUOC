.section .data
    mensaje_ingreso: .asciz "Ingrese nota: "
    mensaje_suma: .asciz "La suma es: "
    mensaje_promedio: .asciz "Promedio: "
    mensaje_estado_aprobado: .asciz "Estado: APROBADO"
    mensaje_estado_reprobado: .asciz "Estado: REPROBADO"
    newline: .asciz "\n"

.section .bss
    .lcomm nota, 10
    .lcomm suma, 8
    .lcomm promedio, 8

.section .text
    .global _start

_start:
    ; Aquí iría la lógica para leer entrada, sumarla y calcular el promedio
    ; Luego imprimiría el resultado usando syscalls de Linux

    ; Terminamos el programa
    mov x8, #93  ; syscall exit
    mov x0, #0   ; código de salida 0
    svc #0

section .data
    input_prompt db "Ingrese categoria: ",0
    input_tarifa db "Ingrese tarifa: ",0
    auto_normal db "2000",0
    auto_other db "3000",0
    moto_normal db "600",0
    moto_other db "900",0
    camioneta_normal db "3000",0
    camioneta_other db "5200",0
    camion_normal db "3500",0
    camion_other db "5200",0
    bus_normal db "3500",0
    bus_other db "5200",0
    
section .bss
    categoria resb 10
    tarifa resb 10
    total resb 10
    
section .text
    global main
main:
    ; clear the screen
    mov eax, 0x04
    mov ebx, 0x02
    int 0x80

    ; get input for category
    mov edx, input_prompt
    mov ecx, categoria
    mov ebx, 1
    mov eax, 0x03
    int 0x80
    
    ; get input for tarifa
    mov edx, input_tarifa
    mov ecx, tarifa
    mov ebx, 1
    mov eax, 0x03
    int 0x80

    ; calculate total to pay
    cmp byte [categoria], "auto"
    je .auto
    cmp byte [categoria], "camioneta"
    je .auto
    cmp byte [categoria], "moto"
    je .moto
    cmp byte [categoria], "camion"
    je .camion
    cmp byte [categoria], "bus"
    je .bus
    
    ; category not recognized, exit program
    jmp .exit
    
.auto:
    cmp byte [tarifa], "normal"
    je .auto_normal
    jmp .auto_other

.auto_normal:
    mov eax, auto_normal
    jmp .calculate_total

.auto_other:
    mov eax, auto_other
    jmp .calculate_total

.moto:
    cmp byte [tarifa], "normal"
    je .moto_normal
    jmp .moto_other

.moto_normal:
    mov eax, moto_normal
    jmp .calculate_total

.moto_other:
    mov eax, moto_other
    jmp .calculate_total

.camion:
    cmp byte [tarifa], "normal"
    je .camion_normal
    jmp .camion_other

.camion_normal:
    mov eax, camion_normal
    jmp .calculate_total

.camion_other:
    mov eax, camion_other
    jmp .calculate_total

.bus:
    cmp byte [tarifa], "normal"
    je .bus_normal
    jmp .bus_other

.bus_normal:
    mov eax, bus_normal
    jmp .calculate_total

.bus_other:
    mov eax, bus_other
    
.calculate_total:
    mov ebx, total
    mov [ebx], eax
    
.exit:
    ; print ticket
    mov edx, input_prompt
    mov ecx, categoria
    mov ebx, 1
    mov eax, 0x03
    int 0x80

    mov edx, input_tarifa
    mov ecx, tarifa
    mov ebx, 1
    mov eax, 0x03
    int 0x80

    mov edx, total
    mov ebx, categoria
    mov ebx, 1
    mov eax, 0x03
    int 0x80
    
    ; exit program
    mov eax, 0x01
    xor ebx, ebx
    int 0x80

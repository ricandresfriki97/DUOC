; Ensamblador MASM para realizar operaciones matemáticas en ASM

.data
    mensaje_a db "Ingrese el primer número: ", 0
    mensaje_b db "Ingrese el segundo número: ", 0
    mensaje_suma db "Suma: ", 0
    mensaje_resta db "Resta: ", 0
    mensaje_multiplicacion db "Multiplicación: ", 0
    mensaje_division db "Cociente: ", 0
    mensaje_resto db "Resto: ", 0
    mensaje_potencia db "Potencia: ", 0

.code
    main proc
        ; escribir mensajes y esperar a que el usuario ingrese los números
        mov ah, 9h ; función para escribir un mensaje
        lea dx, mensaje_a ; dirección del mensaje "Ingrese el primer número: "
        int 21h ; llamada al sistema

        mov edx, 0 ; limpiar el registro de destino en edx
        call input ; llamada a la subrutina para leer un número entero del usuario
        mov [a], edx ; guardar el número ingresado en a

        mov ah, 9h ; función para escribir un mensaje
        lea dx, mens_b ; dirección del mensaje "Ingrese el segundo número: "
        int 21h ; llamada al sistema

        mov edx, 0 ; limpiar el registro de destino en edx
        call input ; llamada a la subrutina para leer un número entero del usuario
        mov [b], edx ; guardar el número ingresado en b

        ; realizar operaciones matemáticas y mostrar los resultados
        mov ax, [a] ; copiar el valor de a en ax
        add ax, [b] ; suma
        mov cx, ax ; copiar el resultado de la suma en cx para imprimirlo más tarde

        mov ax, [a] ; copiar el valor de a en ax
        sub ax, [b] ; resta
        mov [resta], ax ; guardar el resultado de la resta en un nuevo registro

        mov ax, [a] ; copiar el valor de a en ax
        imul b ; multiplicación
        mov [multiplicacion], ax ; guardar el resultado de la multiplicación en un nuevo registro

        cwd ; extendir el signo al doble (para que se pueda dividir)
        idiv b ; división
        mov [division], ax ; guardar el cociente en un nuevo registro

        mov ax, [a] ; copiar el valor de a en ax
        xor dx, dx ; limpiar el resto del divisor en dx
        div b ; dividir a entre b y obtener el resto en dx
        mov [resto], dx ; guardar el resto en un nuevo registro

        mov ax, [a] ; copiar el valor de a en ax
        xor dx, dx ; limpiar el resto del divisor en dx
        imul b ; multiplicación para obtener la potencia
        push ax ; guardar el resultado en la pila para poder usarlo más tarde

        mov ah, 02h ; función para escribir un carácter
        mov dl, '^' ; caracter de la potencia
        int 21h ; llamada al sistema

        pop ax ; copiar el resultado de la potencia en ax y volver a usarlo

        ; mostrar los resultados
        mov ah, 09h ; función para escribir un mensaje
        lea dx, mensaje_suma ; dirección del mensaje "Suma: "
        int 21h ; llamada al sistema

        mov ah, 02h ; función para escribir un carácter
        call print_dec ; llamada a la subrutina para imprimir el valor de cx
        push ax ; guardar el resultado en la pila para poder usarlo más tarde

        mov ah, 02h ; función para escribir un carácter
        call print_dec ; llamada a la subrutina para imprimir el valor de [resta]
        push ax ; guardar el resultado en la pila para poder usarlo más tarde

        mov ah, 02h ; función para escribir un carácter
        call print_dec ; llamada a la subrutina para imprimir el valor de [multiplicacion]
        push ax ; guardar el resultado en la pila para poder usarlo más tarde

        mov ah, 02h ; función para escribir un carácter
        call print_dec ; llamada a la subrutina para imprimir el valor de [division]
        push ax ; guardar el resultado en la pila para poder usarlo más tarde

        mov ah, 02h ; función para escribir un carácter
        call print_dec ; llamada a la subrutina para imprimir el valor de [resto]
        push ax ; guardar el resultado en la pila para poder usarlo más tarde

        mov ah, 02h ; función para escribir un carácter
        call print_dec ; llamada a la subrutina para imprimir el valor de ax (potencia)
        push ax ; guardar el resultado en la pila para poder usarlo más tarde

        mov ah, 07h ; función para imprimir un retorno de carro y una nueva línea
        int 21h ; llamada al sistema

        exit:
            mov ah, 4ch ; código para finalizar el programa
            int 21h ; llamada al sistema
    main endp

    input proc
        pusha ; guardar los registros en la pila
        mov ah, 0Ah ; función para leer una cadena de caracteres
        int 21h ; llamada al sistema
        popa ; restaurar los registros de la pila
    input endp

    print_dec proc
        pusha ; guardar los registros en la pila
        mov ah, 02h ; función para escribir un carácter
        mov bx, sp ; dirección del último dígito de edx almacenado en la pila
        add bx, 2 ; dirección de edx almacenada en la pila + 2 = dirección de dx
        mov dl, [bx] ; copiar el valor de dx en dl para imprimirlo
        int 21h ; llamada al sistema
        popa ; restaurar los registros de la pila
    print_dec endp

end main

END

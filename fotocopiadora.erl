-module(boleta).
-export([main/0]).

% Función principal
main() ->
    io:format("Ingresa la cantidad de hojas: "),
    {ok, [Hojas]} = io:fread("", "~d"),  % Leer número entero
    PrecioPorHoja = 20,
    TotalBase = Hojas * PrecioPorHoja,
    
    % Aplicar descuento si es necesario
    Total = if Hojas > 30 -> TotalBase * 0.90;
               true -> TotalBase
            end,

    % Simular pausa antes de imprimir la boleta
    io:format("Presiona Enter para continuar..."),
    io:get_line(""),

    % Limpiar pantalla (solo en sistemas compatibles)
    io:format("~c[H~c[J", [27, 27]),

    % Imprimir la boleta
    io:format("
    ----  BOLETA -----
    Cant. hojas:  ~p
    Valor por hoja: $~p
    TOTAL: $~.2f~n", [Hojas, PrecioPorHoja, Total]).


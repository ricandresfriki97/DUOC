-module(notas).
-export([calcular/0]).

calcular() ->
    io:format("Ingrese nota 1: "),
    {ok, N1} = io:fread("", "~f"),
    
    io:format("Ingrese nota 2: "),
    {ok, N2} = io:fread("", "~f"),
    
    io:format("Ingrese nota 3: "),
    {ok, N3} = io:fread("", "~f"),

    Suma = N1 + N2 + N3,
    Promedio = Suma / 3,
    Estado = if
        Promedio >= 4.0 -> "APROBADO";
        true -> "REPROBADO"
    end,

    io:format("\n------ Resultados ----\n", []),
    io:format("Promedio: ~.2f\n", [Promedio]),
    io:format("Estado: ~s\n", [Estado]).


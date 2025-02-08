-module(boleta).
-export([main/0]).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
main() ->
    io:format("ingresa la cantidad de hojas por favor")
    {ok, [Hojas]} = io:fread("", "~d"),
    PrecioPorHoja = 20
    TotalBase = hojas * PrecioPorHoja
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Total = if hojas > 30 -> TotalBase * 0.90;
               true -> TotalBase
            end,
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%               
    io:format("presiona enter para continuar por favor")
    io:get_line("")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    io:format("~c[H~c[J", [27, 27]),
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    io:format("
********Boleta******
cantidad de hojas:  ~p
valor por hoja $ ~p
TOTAL: $~.2f~n", [hojas, PrecioPorHoja, Total]).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%            

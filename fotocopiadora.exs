defmodule fotocopiadora do 
    def main do 
      IO.puts("\e[H\e[2J")
#######################################
      hojas =
        IO.gets("ingresa la cantidad de hojas por favor")
        |> String.trim()
        |> String.to_integer()
#######################################
        total = hojas * 20
########################################
        total = if hojas > 30, do: total * 0.90, else: total
#########################################
        IO.puts("presiona enter para continuar")
        IO.gets("")
#########################################
        IO.puts("\e[H\e[2J")
#########################################
        IO.puts("*****Boleta****
        cantidad de hojas #{hojas}
        valor por hoja $20
        TOTAL $#{total}")
      end
end
##########################################
fotocopiadora.main()
##########################################                                                   

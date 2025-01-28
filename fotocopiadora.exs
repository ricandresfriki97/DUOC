defmodule Boleta do
  def main do
    # Limpiar pantalla (no es estándar en Elixir, pero puede usarse en sistemas compatibles)
    IO.puts("\e[H\e[2J")

    # Pedir la cantidad de hojas al usuario
    hojas = 
      IO.gets("Ingresa la cantidad de hojas: ")
      |> String.trim()
      |> String.to_integer()

    # Calcular el total
    total = hojas * 20

    # Aplicar descuento si es necesario
    total = if hojas > 30, do: total * 0.90, else: total

    # Pausar antes de mostrar la boleta (simulado)
    IO.puts("Presiona Enter para continuar...")
    IO.gets("")

    # Limpiar pantalla nuevamente
    IO.puts("\e[H\e[2J")

    # Mostrar la boleta
    IO.puts("""
    ----  BOLETA -----
    Cant. hojas:  #{hojas}
    Valor por hoja $20
    TOTAL $#{total}
    """)
  end
end

# Ejecutar el programa
Boleta.main()


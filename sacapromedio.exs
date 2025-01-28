defmodule Notas do
  def calcular do
    # Capturar las notas del usuario
    nota1 = obtener_nota("Ingrese nota 1: ")
    nota2 = obtener_nota("Ingrese nota 2: ")
    nota3 = obtener_nota("Ingrese nota 3: ")

    # Calcular la suma y el promedio
    suma = nota1 + nota2 + nota3
    promedio = suma / 3

    # Determinar estado
    estado = if promedio >= 4.0, do: "APROBADO", else: "REPROBADO"

    # Mostrar resultados
    IO.puts("\n------ Resultados ----")
    IO.puts("Promedio: #{Float.round(promedio, 2)}")
    IO.puts("Estado: #{estado}")
  end

  defp obtener_nota(mensaje) do
    IO.write(mensaje)
    case IO.gets("") |> String.trim() |> Float.parse() do
      {valor, _} -> valor
      :error -> IO.puts("Entrada inválida, intenta de nuevo.") && obtener_nota(mensaje)
    end
  end
end

# Ejecutar el programa
Notas.calcular()


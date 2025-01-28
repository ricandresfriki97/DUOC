import Text.Printf (printf)

main :: IO ()
main = do
    -- Capturar las notas del usuario
    putStr "Ingrese nota 1: "
    nota1 <- readLn :: IO Float

    putStr "Ingrese nota 2: "
    nota2 <- readLn :: IO Float

    putStr "Ingrese nota 3: "
    nota3 <- readLn :: IO Float

    -- Calcular la suma y el promedio
    let suma = nota1 + nota2 + nota3
        promedio = suma / 3
        estado = if promedio >= 4.0 then "APROBADO" else "REPROBADO"

    -- Mostrar resultados
    putStrLn "\n------ Resultados ----"
    printf "Promedio: %.2f\n" promedio
    putStrLn $ "Estado: " ++ estado


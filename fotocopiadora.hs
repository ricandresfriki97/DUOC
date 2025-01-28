import System.IO

main :: IO ()
main = do
    -- Limpiar pantalla (solo funciona en algunas terminales)
    putStr "\ESC[H\ESC[2J"

    -- Pedir la cantidad de hojas
    putStr "Ingresa la cantidad de hojas: "
    hFlush stdout  -- Forzar impresión en pantalla antes de recibir entrada
    input <- getLine
    let hojas = read input :: Int

    -- Calcular el total
    let precioPorHoja = 20
    let totalBase = precioPorHoja * hojas
    let total = if hojas > 30 then round (fromIntegral totalBase * 0.90) else totalBase

    -- Simular una pausa
    putStr "Presiona Enter para continuar..."
    hFlush stdout
    _ <- getLine  -- Espera la entrada del usuario

    -- Limpiar pantalla nuevamente
    putStr "\ESC[H\ESC[2J"

    -- Imprimir la boleta
    putStrLn $ unlines [
        "    ----  BOLETA -----",
        "    Cant. hojas:  " ++ show hojas,
        "    Valor por hoja: $20",
        "    TOTAL: $" ++ show total
      ]


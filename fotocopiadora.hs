import System.IO 
-------------------------------------
main :: IO ()
main = do
-------------------------------------
    putStr "\ESC[H\ESC[2J"
    hFlush stdout
    input <- getLine
    let hojas = read input :: Int 
--------------------------------------
    let precioPorHoja = 20
    let totalBase - precioPorHoja * hojas
    let total = if hojas > 30 then round (fromIntergral totalBase * 0.90) else totalBase
---------------------------------------
    putStr "presuiba enter para continuar"
    hFlush stdout
    _ <- getLine
-----------------------------------------
    putStr  "\ESC[H\ESC[2J"
-----------------------------------------
    putStr $ unlines [
        "*********Boleta*******"
        "cantidad de hojas: " ++ show hojas
        "valor por hojas: $20",
        "TOTAL: $ " ++ show total




    ]
-------------------------------------------                     

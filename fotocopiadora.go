package main

import (
	"fmt"
)

func main() {
	// Solicitar la cantidad de hojas
	var hojas int
	fmt.Print("Ingresa la cantidad de hojas: ")
	fmt.Scan(&hojas)

	// Calcular el precio total
	precioPorHoja := 20
	total := precioPorHoja * hojas

	// Aplicar descuento si hay más de 30 hojas
	if hojas > 30 {
		total = int(float64(total) * 0.90) // Aplicar 10% de descuento
	}

	// Simular pausa antes de imprimir la boleta
	fmt.Print("Presiona Enter para continuar...")
	fmt.Scanln() // Captura Enter

	// Limpiar pantalla (Go no tiene una función estándar para esto)
	fmt.Print("\033[H\033[2J") // Código ANSI para limpiar la pantalla

	// Imprimir la boleta
	fmt.Printf(`
    ----  BOLETA -----
    Cant. hojas:  %d
    Valor por hoja: $%d
    TOTAL: $%d  
    `, hojas, precioPorHoja, total)
}


package main

import (
	"fmt"
)

func main() {
	var nota1, nota2, nota3 float64

	// Capturar las notas del usuario
	fmt.Print("Ingrese nota 1: ")
	fmt.Scan(&nota1)

	fmt.Print("Ingrese nota 2: ")
	fmt.Scan(&nota2)

	fmt.Print("Ingrese nota 3: ")
	fmt.Scan(&nota3)

	// Calcular la suma y el promedio
	suma := nota1 + nota2 + nota3
	promedio := suma / 3

	// Determinar el estado
	estado := "REPROBADO"
	if promedio >= 4.0 {
		estado = "APROBADO"
	}

	// Mostrar resultados
	fmt.Println("\n------ Resultados ----")
	fmt.Printf("Promedio: %.2f\n", promedio)
	fmt.Println("Estado:", estado)
}


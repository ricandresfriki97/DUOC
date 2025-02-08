package main
/////////////////////////
import(
	"fmt"
)
/////////////////////////
func main(){
	   var hojas int
	   fmt.Print("ingresa la cantidad de hojas por favor")
	   fmt.Scan(&hojas)
	   precioPorHoja := 20
	   total := precioPorHoja * hojas
	   if hojas > 30 {
				total = int(float64(total) * 0.90)
	   }
	   fmt.Print("presiona enter para continuar")
	   fmt.Scanln()
	   fmt.Print("\033[H\033[2J")
	   fmt.Print("****Boleta****
	   cantidad de hojas: %d
	   valor por hoja: $%d
	   TOTAL: $%d")
}
////////////////////////////


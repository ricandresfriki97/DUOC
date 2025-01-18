import os
########################################################
producto = ""
nombreproducto = ""
precioproducto = 0
total = 0
sub_total = 0
descuento = 0
retiro = "S"
extra = "S"
precioextra = 0
productoextra = ""
nombreproductoextra = ""
#######################################################

os.system("clear")
producto  = str (input(''' **************************************************                        
*           ítem Valor por hardware              *
* 1)Samsung Galaxy Tab A9               $150.000 *
* 2)Nintendo Switch OLED                $420.000 *
* 3)Apple iMac 21.5'' Late 2015         $350.000 *
* 4)Sony PlayStation 5                  $999.900 *
* 5)GABINETE COOLERMASTER             $1.140.000 *
************************************************** 
    '''))
if producto == "1":
     nombreproducto = "Samsung Galaxy Tab A9"
     precioproducto = 150.000
      
if producto == "2":
     nombreproducto = "Nintendo Switch OLED"
     precioproducto = 420.000
if producto == "3":
     nombreproducto = "Apple iMac 21.5'' Late 2015"
     precioproducto = 350.000
if producto == "4":
     nombreproducto = "Sony PlayStation 5"
     precioproducto = 999.900
if producto == "5":
     nombreproducto = "GABINETE COOLERMASTER"
     precioproducto = 1.140,000
######################################################
extra = str (input(''' desea agregar algo extra? si o no? ''')).upper()
######################################################
if extra == "Si":
     productoextra = str (input('''
**************************************************                        
*           ítem Valor por hardware              *
* 1)peluche mario  $15.000                       *
* 2)gorra pokemon   $5000                        *
**************************************************        
     '''))
     	
if productoextra == "1":
     nombreproductoextra = "peluche mario"
     precioextra = 15.000
if productoextra == "2":
     nombreproductoextra = "gorra pokemon"
     precioextra = 5000
#######################################################
retiro = str(input(''' desea retirarlo en tienda fisica si o no ''')).upper()
#######################################################
if retiro == "Si":
          descuento = 0.10*(producto+productoextra)
          total = (producto+productoextra) - descuento
else: descuento = 0 
total = producto+productoextra
########################################################
print (f'''
          gracias por su compra , su producto {nombreproducto} salio al valor de {precioproducto} con un su descuento de {descuento} y en total es {total} , por favor vuelva pronto ''')
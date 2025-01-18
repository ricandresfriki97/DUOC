import os
###############################################################
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
menu = ""
socio = "S"
ventas = 0
clientes = 0
################################################################
while True:
    os.system("cls")
    menu = str (input('''
***************************************************
*1) compra de productos                           *
*2) estadisticas                                  *
*3) salir                                         *
***************************************************                                            
                      '''))
##################################################################    
    if menu == "1":

     producto = str (input('''
******************************************************************
*1) Samsung Galaxy Tab A9               $150.000/socio $130.000  *
*2) Nintendo Switch OLED                $420.000/socio $378.000  *
*3) Apple iMac 21.5'' Late 2015         $350.000/socio $315.000  *
*4) Sony PlayStation 5                  $999.900/socio $899.910  *                                            *
*5) GABINETE COOLERMASTER             $1.140.000/socio$1.026.000 *                                             *
****************************************************************** 
    
    '''))
###################################################################
    if producto == "1":
     nombreproducto = "Samsung Galaxy Tab A9"
    socio = str(input("eres socio? si o no?"))
    if socio == "si":
     descuento = total*0.10
     total = total-descuento
    else : precioproducto = 150000
    if producto == "2":
     nombreproducto = "Nintendo Switch Oled"
    socio = str(input("eres socio? si o no"))
    if socio == "si":
       descuento = total*0.10
       total = total-descuento
    else: precioproducto = 420000
    if producto == "3":
      nombreproducto = "Apple iMac 21.5 late 2015"
      socio = str (input("eres socio si o no?"))
      if socio == "si":
       descuento = total*0.10
      total = total-descuento
    else: precioproducto = 350000
    if producto == "4":
      nombreproducto = "Sony Playstation 5"
      socio = str(input("eres socio? si o no"))
      if socio == "si":
       descuento = total*0.10
       total = total-descuento
    else: precioproducto = 999900
    if producto == "5":
      nombreproducto = "gabinete coolermaster"
      socio = str(input("eres socio? si o no"))
      if socio == "si":
        descuento = total*0.10
        total = total-descuento
    else: precioproducto = 1140000
############################################################################
    extra  = str(input("desea algo mas? si o no"))
    while not input("si" or "no"):
      print("error debe ser solo si o no")
      if extra == "si":
        productoextra = str(input('''
**************************************************                        
*           ítem Valor por hardware              *
* 1)peluche mario  $15.000                       *
* 2)gorra pokemon   $5000                        *
**************************************************                                    
                                  '''))
#############################################################################        
        if productoextra == "1":
          nombreproductoextra = "peluche mario"
          precioextra = 15000
        if productoextra == "2":
          nombreproductoextra = "gorra pokemon"
          precioextra = 5000
#############################################################################          

        print(f''' gracias por su compra su producto {nombreproducto} mas el precio del producto es {precioproducto} por el descuento de {descuento} al haber sido socio {socio} y el producto extra {nombreproductoextra} por el valor de {precioextra} al total de {total} gracias por su compra :)''')
##############################################################################
           
    clientes += 1
    ventas += total
###############################################################################
    if menu == "2":
      print(f'''
 cantidad de clientes {clientes}
 ventas en total {ventas}
 ''')
################################################################################
    if menu == "3":
      break          

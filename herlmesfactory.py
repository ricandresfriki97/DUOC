import os
######################################################
tipo_de_compra = ""
valor_de_compra = 0
tipo_producto = ""
extra = "S"
total = 0
sub_total = 0
socio = "N"
retiro = "S"
producto_extra = ""
compraextra = 0
descuento = 0
nombre_de_compra = ""
######################################################

os.system("clear")
tipo_de_compra  = str (input(''' **************************************************                        
*           ítem Valor por hardware              *
* 1)RTX 4060    $350.000/ RTX 4060 TI   $490.000 *
* 2)RTX 4080    $1.300.000/ RTX 4090  $2.500.000 *
* 3)RYZEN9700X  $390.000/RYZEN97950X3D  $880.000 *
* 4)INTELULTRA5 $370.000/INTELULTRA9    $800.000 *
* 5)GABINETE COOLERMASTER             $1.140.000 *
************************************************** 
    '''))
#########################################################
if tipo_de_compra == "1":
       nombre_de_compra = "RTX 4060"
       valor_de_compra = 350.000
elif nombre_de_compra : "RTX 4060 TI"       
else: valor_de_compra = 490.000
if tipo_de_compra == "2":
       nombre_de_compra = "RTX 4080"
       valor_de_compra = 1.300,000
else: valor_de_compra = 2.500,000
if tipo_de_compra == "3":
       valor_de_compra = 390.000
else: valor_de_compra = 880.000
if tipo_de_compra == "4":
       valor_de_compra = 370.000
else: valor_de_compra = 800.000
if tipo_de_compra == "5":
       valor_de_compra == 1.140,000
##########################################################
extra   = str (input(''' desea agregar algo mas? Si o No? 
    
    '''))
if extra == "Si":
       producto_extra = str (input('''
**************************************************                        
*           ítem Valor por hardware              *
* 1)pastatermica $15.000                         *
* 2)padtermico   $5000                           *
**************************************************        
     '''))
###########################################################
if producto_extra == "1":
       compraextra = 15.000
if producto_extra == "2":
       compraextra = 5000
else:compraextra = 0   
###########################################################
retiro = str(input(''' desea retirarlo en tienda o por envio? Si o No?
     
     ''')).upper()
###########################################################
if retiro == "Si":
       descuento = subtotal = 0.10*(valor_de_compra+compraextra) 
       total = (valor_de_compra+compraextra)-descuento
else: descuento = 0 
total = valor_de_compra+compraextra        
###########################################################
print (f'''
              gracias por su compra , su {tipo_de_compra} salio a {valor_de_compra} con un descuento de {descuento} 
              
              por favor vuelva pronto :)
    
    ''')
	                  
         
                  

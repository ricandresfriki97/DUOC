import os
import modulorecluso as mr
#############################
menu = str
#############################
while True:
    os.system("clear")
    menu = str(input('''
********************************
*1)registrar recluso            *
*2)listar recluso               *
*3)salir                        *
********************************                                                                                                         
                     
                     
                     '''))
    
    if menu == "1":
        os.system("clear")
        mr.registro_de_reclusos()
    elif menu == "2":
        os.system("clear")
        mr.listar_de_recluso()
    elif menu == "3":
        break
##################################            
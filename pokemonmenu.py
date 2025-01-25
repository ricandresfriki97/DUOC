import os
import pokemonmodulo as pm
########################################
menu = ""
########################################
os.system("clear")
while True:
    menu = input(('''input
******************************
*1) register pokemon         *
*2) list pokemon             *                                                      
*3) make pokemon list txt    *
*4) exit                     *
******************************                                    
                   '''))
    if menu == "1":
        os.system("clear")
        pm.registerpokemon()
    elif menu == "2":
        os.system("clear")
        pm.listpokemon()
    elif menu == "3":
        os.system("clear")
        pm.createfile()
    elif menu == "4":
        break
########################################                
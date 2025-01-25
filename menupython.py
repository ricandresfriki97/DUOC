import os
import librarymodulo as libm
#######################################
menu = "" 
#######################################
while True:
    os.system("clear")
    menu = input(('''
******************************
*1) register library         *                                                                  
*2) make python list csv     *
*3) exit                     *
******************************

'''))
    if menu == "1":
        os.system("clear")
        libm.register()
    elif menu == "2":
        os.system("clear")
        libm.createfile()
    elif menu == "3":
        break            
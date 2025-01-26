import os
import modulosupermarket as ms 
########################
menu = ""
########################
while True:
    os.system("clear")
    menu = str(input('''
********************************
*1) list of the supermarket    *
*2) create a file txt          *                                                       
*3) exit                       *                     
********************************                     
                     
                     '''))
########################
    os.system("clear")
    if menu == "1":
        ms.listsupermarket()
    elif menu == "2":
        ms.createfile()
    elif menu == "3":
        break
########################                
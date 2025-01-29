import os
import random
import csv
#########################
nombres = ["Juan", "Pedro", "Maria", "Jose", "Ana", "Luis", "Carlos", "Rosa", "Jorge", "Laura"]
expedientes = ["Asesinato", "Robo", "Secuestro", "Violacion"]
pruebas = ["Huella", "ADN", "Testigo", "Arma"]
reclusoslist = []
##########################
def generatedrandomlist():
    list = []
    for r in range(10):
        reclusos = round.uniform(0, 10)
        list.append(reclusos)
    return list
##########################
def createcreclusolist():
    global reclusoslist
    reclusoslist = []
    for r in nombres:
        reclusoslist.append(r, generatedrandomlist())
##########################
if random.randint(0, 1) == 0:
 estado = "INOCENTE"
else: random.randint(0, 1) == 0
estado = "CULPABLE"
##########################
recluso = {
   
     "nombre": nombres[random.randint(0, 9)],
     "expediente": expedientes[random.randint(0, 3)],
     "pruebas": pruebas[random.randint(0, 3)],
}
##########################
reclusoslist.append(recluso)
print(reclusoslist)
##########################
def listareclusos():
   for recluso in reclusoslist:
      print(f'''nombre {recluso["nombre"]} expediente {recluso["expediente"]} pruebas {recluso["pruebas"]} ''')
##########################
def guardarreclusos():
    with open("reclusos.csv", "w") as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=["nombre", "expediente", "pruebas"])
        writer.writeheader()
        for recluso in reclusoslist:
            writer.writerow(recluso)      
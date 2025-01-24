import os
#####################################################
lista_de_reclusos = []
#####################################################
def registro_de_reclusos():
    os.system("cls")
    nombre = str (input("ingrese el nombre del recluso")).strip()
    while not len(nombre) >0:
        print("erro no se puede quedar vacia esta cacilla")
        nombre = str(input("ingrese el nombre del recluso")).strip()
    edad = int (input("ingrese edad del recluso"))
    estatura = float(input("ingrese estatura"))
    causa = str(input("ingrese su causa")).strip() 
    rut = str(input("ingrese el rut del recluso"))
    peso = float(input("ingrese el peso del recluso"))
#######################################################
    recluso = {

        "nombre": nombre,
        "edad": edad,
        "estatura": estatura,
        "causa": causa,
        "rut": rut,
        "peso": peso
}
#########################################################
lista_de_reclusos.append(recluso)
print("usuario registrado")
##########################################################
def listar_de_recluso():
    if not lista_de_reclusos:
        print("no hay usuario registrado")
    else:
        cantidad = len(lista_de_reclusos)
        print(f" hay {cantidad} de usuario registrado")
        for recluso in lista_de_reclusos:
            print(f'''
             {recluso["nombre"]}  {recluso["edad"]} {recluso["estatura"]}  {recluso["causa"]} {recluso["rut"]} {recluso["peso"]}''') 
#############################################################
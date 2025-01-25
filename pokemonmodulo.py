import os
#######################################
listpokemon = []
typepokemon =  ["bug", "dark", "dragon", "electric", "fairy", "fighting", "fire", "flying", "ghost", "grass", "ground", "ice" ,"normal", "poison", "psychic", "rock", "steek", "water"]
#######################################
def registerpokemon():
    os.system("clear")
    pokemon = str(input("Enter the name of the pokemon: "))
    if pokemon in listpokemon:
        print("This pokemon is already registered")
    else:
        listpokemon.append(pokemon)
        print("Pokemon registered successfully")
    typepokemon = str(input("Enter the type of the pokemon: "))

    if typepokemon in typepokemon:
        print("This type is already registered")
    else:
        typepokemon.append(typepokemon)
        print("Type registered successfully")
    numberpokemon = str(input("Enter the number of the pokemon: "))
    if numberpokemon in numberpokemon:
        print("This number is already registered")
    else:
        numberpokemon.append(numberpokemon)
        print("Number registered successfully")
#######################################
        pokemon = {

            "pokemon": pokemon,
            "type": typepokemon,
            "number": numberpokemon
}
        print("Pokemon registered successfully")
    def  listtpokemon():
        if not listpokemon:
            print("No pokemon registered")
        else:
            for pokemon in listpokemon:
                print(f'''name of the pokemon: {pokemon["pokemon"]} type of the pokemon: {pokemon["type"]} number of the pokemon: {pokemon["number"]}''')
#######################################
def createfile ():
    with open("pokemon.txt", "w") as file:
        for pokemon in listpokemon:
            file.write(f''' name of the pokemon: {pokemon["pokemon"]} type of the pokemon: {pokemon["type"]} number of the pokemon: {pokemon["number"]}''')
#######################################                                
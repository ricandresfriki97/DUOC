import os
############################################
listlibrarypython = ['numpy','pandas','matplotlib','seaborn','scipy','sklearn','tensorflow','keras','nltk','gensim','spacy','textblob','wordcloud','pydot','graphviz','pygraphviz','networkx','bokeh','plotly','dash','flask','django','fastapi','streamlit','pyqt5','tkinter','pygame']
############################################
def register():
    os.system("clear")
    library = str(input("Enter the name of the library you want to install: "))
    if library in listlibrarypython:
        os.system("pip install "+library)
    else:
        print("The library you entered is not available in the list.")
    typeos = str(input("Enter the type of operating system you are using (windows, linux, mac): "))
    while not typeos in ['windows', 'linux', 'mac']:
        typeos = str(input("Enter the type of operating system you are using (windows, linux, mac)"))
############################################
    library = {

        "library": library,
        "typeos": typeos,
}        
    print("The library has been registered.")
#############################################
def createfile ():
    if not listlibrarypython:
        print("No library registered")
    else:
        fileout = "library.csv"
        with open(fileout, "w") as file:
            for library in listlibrarypython:
                file.write(f''' name of the library: {library["library"]} type of the operating system: {library["typeos"]}''')
#############################################                


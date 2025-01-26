import os
#######################
supermarketlist = []
supermarkettype = ["fruit", "vegetable", "meat", "daily", "snack", "drink", "alcohol"]
#######################
nameproduct = str(input("Enter the name of the product:"))
typeproduct = str(input("Enter the type of the product:"))
priceproduct = float(input("Enter the price of the product:"))
#########################
product = {

     "name": nameproduct,
     "type": typeproduct,
     "price": priceproduct
}
#########################
supermarketlist.append(product)
print("The product has been added to the list")
#########################
def listsupermarket():
    if not supermarketlist:
        print("the list is empty")
    else:
        for product in supermarketlist:
            print(f''' name of the product: {product["name"]} type of the product: {product["type"]} price of the product: {product["price"]}''') 
#########################
def createfile():
    with open("supermarket.txt", "w")  as file:
        for product in supermarketlist:
            file.write(f''' name of the product: {product["name"]} type of the product: {product["type"]} price of the product: {product["price"]}''')
#########################
                          
shopping = 'y'

pie_purchases = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

pie_list = ["Pecan", "Apple Crisp","Bean", "Banoffee", "Black Bun", "Blueberry", "Buko", "Burek", "Tamale", "Steak"]

print("Welcome to the House of Pies! Here are our pies: ")


while shopping == "y":
    print("----------------------------------------------------------------------------")
    print("Pecan", "Apple Crisp","Bean", "Banoffee", "Black Bun", "Blueberry", "Buko", "Burek", "Tamale", "Steak")

    pie_choice = input("Which would you like? ")

    choice_index = int(pie_choice) - 1

    pie_purchases[choice_index] += 1

    print("----------------------------------------------------------------------------")

    print("Great! We'll have that " +pie_list[choice_index] + " right out for you.")

    shopping = input("Would you like to make another purchase? (y)es or (n)o? ")

print("---------------------------------------------------------------------------------")



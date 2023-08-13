# Incorporate the random library
import random

# Print Title
print("Let's Play Rock Paper Scissors!")

# Specify the three options
options = ["r", "p", "s"]

# Computer Selection
computer_choice = random.choice(options)

# User Selection
user_choice = input("Make your Choice: (r)ock, (p)aper, (s)cissors? ")

# Run Conditionals
if computer_choice == user_choice:
    print("Draw!")

elif computer_choice == "r" and user_choice == "s":
    print("Computer chose Rock! Computer Wins!")

elif computer_choice == "p" and user_choice == "r":
    print("Computer chose Paper! Computer Wins!")

elif computer_choice == "s" and user_choice == "p":
    print("Computer chose Scissors! Computer Wins!")    

elif computer_choice == "r" and user_choice == "p":
    print("Computer chose Rock. User Wins!") 

elif computer_choice == "p" and user_choice == "s":
    print("Computer chose Paper. User Wins!")  

elif computer_choice == "s" and user_choice == "r":
    print("Computer chose scissors. User Wins!")   
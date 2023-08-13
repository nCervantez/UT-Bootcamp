# Create a variable called 'name' that holds a string
from operator import truediv


name="Nate"
# Create a variable called 'country' that holds a string
country="The United States"
# Create a variable called 'age' that holds an integer
age=25
# Create a variable called 'hourly_wage' that holds an integer
hourly_wage=30
# Calculate the daily wage for the user
daily_wage = (hourly_wage * 8)
# Create a variable called 'satisfied' that holds a boolean
satisfied=True
# Print out "Hello <name>!"
print(("Hello " + name + "!"))
# Print out what country the user entered
print("You live in " + str(country))
# Print out the user's age
print("You are " +str(age))
# With an f-string, print out the daily wage that was calculated
print(f"You make {daily_wage} per day")
# With an f-string, print out whether the users were satisfied
print(f"Are you satisfied with your current wage? {satisfied}")
# Modules
import os
import csv

# Prompt user for title lookup
user_request = input("Which title would you like to know about?: ")
# Set path for file
csvpath = os.path.join("..", "learnpython", "comic_books.csv")

# Set variable to check if we found the video
found_comic = False
# Open the CSV using the UTF-8 encoding
with open(csvpath, encoding='UTF-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    # Loop through looking for the video
    for row in csvreader:
        if row[0] == user_request:
              print(row[0] + " was published by " +row[8] + " in " + row[9])

            # Set variable to confirm we have found the video
              found_comic = True
    # If the book is never found, alert the user
    if found_comic is False:
      print("Sorry about this, we don't seem to have what you're looking for!")

            
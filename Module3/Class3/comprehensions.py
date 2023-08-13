# @TODO: Your code here

names = []

for i in range(5):
    name = input("Please enter the name of someone you know. ")
    names.append(name)


lowercased = [name.lower() for name in names]

title = [name.title() for name in lowercased]


invitations = [f"Dear {name}, please come to the wedding this Saturday!" for name in title]
for invitation in invitations:
    print(invitation)

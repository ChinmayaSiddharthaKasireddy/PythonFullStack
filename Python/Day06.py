#Input Formatting
name = input("Enter your full name: ")
print(name)

quantity = int(input("Enter the number of items: "))
print(quantity)

price = float(input("Enter the product price: "))
print(price)

names = input("Enter employee names (space-separated):").split()
print(names)

tags = input("Enter tags (comma-separated): ").split(',')
print(tags)

marks = list(map(int, input("Enter marks: ").split()))
print(marks)

weights = list(map(float, input("Enter weights: ").split()))
print(weights)

dimensions = tuple(map(int, input("Enter length, width, height: ").split()))
print(dimensions)

selected_ids = set(map(int, input("Enter selected image IDs:").split()))
print(selected_ids)

profile = eval(input("Enter user profile as a dictionary: "))
print(profile)

username, password = input("Enter username and password:").split()
print("Username:", username)
print("Password:", password)

#Output Formatting
print("Hello, World!")

name = "Alice"
age = 25
print("Name:", name, "Age:", age)

print("2024", "02", "07", sep="-")

print("Hello,", end=" ")
print("World!")

print("Line 1\nLine 2")

print("Name:\tAlice")

name = "Alice"
age = 25
score = 95.5

print("Name:", name, "Age:", age, "Score:", score)

name = "Bob"
age = 30
score = 88.75

print("Name: %s | Age: %d | Score: %.2f" % (name, age, score))

name = "Charlie"
age = 28
score = 92.389

print(f"Name: {name} | Age: {age} | Score: {score:.2f}")

name = "Diana"
age = 22
score = 89.456

print("Name: {} | Age: {} | Score: {:.1f}".format(name, age, score))
print("Name: {} | Age: {} | Score: {:.1f}".format(name, age, score))

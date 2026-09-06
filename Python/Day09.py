
#Set

numbers = {10, 20, 30}
names = {"Ravi", "Teja", "Ankit"}
mixed = {10, "Python", 5.5, True}
print(numbers)

s = set() #Creating Empty Set

data = {10, 20, 30, 20, 10} #Duplicate values are automatically removed
print(data)

data = {10, 20, 30} #Membership Operators
print(20 in data)
print(100 not in data)

a = {1, 2, 3} #Union
b = {3, 4, 5}
print(a | b)

a = {1, 2, 3} #Intersection
b = {2, 3, 4}
print(a & b)

a = {1, 2, 3} #Difference
b = {2, 3, 4}
print(a - b)

a = {1, 2, 3} #Symmetric Difference
b = {2, 3, 4}
print(a ^ b)

a = {1, 2} #Subset
b = {1, 2, 3, 4}
print(a <= b)

a = {1, 2, 3, 4} #Superset
b = {1, 2}
print(a >= b)

#Dictionaries

data = {} #Empty Dictionary
data = dict()

student = {"name": "Ravi", "age": 22}#Accessing values from dictionary
print(student["name"])
print(student["age"])

student = {"name": "Ravi", "age": 22} #Updating value in dictionary
student["age"] = 23
print(student)

student = { "name": "Ravi"} #Adding new key-value pair to dictionary
student["course"] = "Python"
print(student)

student = {"name": "Ravi", "age": 22} #Removing Items from Dictionary
del student["age"]
print(student)

student = {"name": "Ravi", "age": 22}
print("name" in student) # Membership Operators
print("course" not in student)
print("age" in student)
#Operators in Python
a = 10
b = 20
#Arithmetic Operators
print(a + b)

daily_salary = 800

days = 30

print(daily_salary * days)

total = 450

subjects = 5

print(total / subjects)

apples = 53
capacity = 10

print(apples // capacity)
print(apples % capacity)

#Assignment Operators
a = 100

a += 500

print(a)

balance = 5000

bill = 1500

balance -= bill

print(balance)

#Comparison Operators
a = 100
b = 50

print(a > b)
print(a == b)
print(a != b)

age = 20

print(age >= 18)

#Logical Operators
a = 300
b = 200
c = 100

print(a > b and a > c)

#Bitwise Operators
a = 10
b = 15

print(a & b)
print(10 | 15)
print(10 ^ 15)
print(10 << 2)
print(10 >> 2)

#Membership Operators
ids = [101,102,103]

print(101 in ids)
print(105 in ids)
print(105 not in ids)

#Identity Operators
a = 10
b = 10

print(a is b)

a = [10]
b = [10]

print(a == b)
print(a is b)

a = 10
b = 20
c = 10

print(a is c)
print(a is b)

# import matplotlib.pyplot as plt
# months = ["Jan", "Feb", "Mar", "Apr", "May"]
# sales = [20000, 25000, 22000, 30000, 35000]
# plt.plot(months, sales,
# color="blue",
# marker="o",
# linestyle="-",
# linewidth=2)
# plt.title("Monthly Sales")
# plt.xlabel("Months")
# plt.ylabel("Sales")
# plt.grid(True)
# plt.show()


# import matplotlib.pyplot as plt
# departments = ["CSE", "ECE", "EEE", "MECH"]
# students = [120, 95, 80, 60]
# plt.bar(departments, students,
# color="red",
# edgecolor="black",
# width=0.6)
# plt.title("Department Strength")
# plt.xlabel("Department")
# plt.ylabel("Students")
# plt.show()


# import matplotlib.pyplot as plt
# marks = [45,56,67,78,89,90,55,60,61,70,72,85,92,68,73,81,65,74,77,88]
# plt.hist(marks,
# bins=5,
# color="orange",
# edgecolor="black")

# plt.title("Exam Score Distribution")
# plt.xlabel("Marks")
# plt.ylabel("Students")
# plt.show()


# import matplotlib.pyplot as plt

# labels = ['Apple', 'Banana', 'Mango', 'Grapes']
# sizes = [30, 25, 20, 25]

# plt.pie(sizes, labels=labels, autopct='%1.1f%%')
# plt.title("Fruit Distribution")
# plt.show()


# import matplotlib.pyplot as plt
# hours = [1,2,3,4,5,6,7,8]
# marks = [30,40,50,60,70,80,90,95]
# plt.scatter(hours, marks, s=100, c="red",marker="o")
# plt.title("Study Hours vs Marks")
# plt.xlabel("Study Hours")
# plt.ylabel("Marks")
# plt.show()


# import matplotlib.pyplot as plt
# days = [1,2,3,4,5,6,7]
# visitors = [200,250,230,280,300,320,350]
# plt.fill_between(days, visitors,color="skyblue",alpha=0.5)
# plt.plot(days, visitors,color="blue",linewidth=2)
# plt.title("Website Visitors")
# plt.xlabel("Days")
# plt.ylabel("Visitors")
# plt.show()


# import seaborn as sns
# import matplotlib.pyplot as plt
# data = [[80,75,90],[60,70,85],[95,88,92]]
# sns.heatmap(data, annot=True,cmap="YlOrRd",linewidths=1)
# plt.title("Student Marks")
# plt.show()


# import matplotlib.pyplot as plt
# months = ["Jan","Feb","Mar","Apr"]
# sales = [20,25,30,35]
# profit = [5,7,8,10]
# plt.figure(figsize=(10,4))
# plt.subplot(1,2,1)
# plt.plot(months, sales, marker="o")
# plt.title("Sales")
# plt.subplot(1,2,2)
# plt.bar(months, profit)
# plt.title("Profit")
# plt.tight_layout()
# plt.show()


import matplotlib.pyplot as plt
salary = [25000,27000,30000,32000,35000,36000,38000,40000,42000,70000]
plt.boxplot(salary,showmeans=True,patch_artist=True)
plt.title("Salary Distribution")
plt.show()


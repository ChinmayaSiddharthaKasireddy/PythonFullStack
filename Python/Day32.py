# 1D array
import numpy as np
arr1 = np.array([1, 2, 3, 4, 5])
print(arr1)
print("Shape of 1D array:", arr1.shape)

# 2D array
arr2 = np.array([[1, 2, 3], [4, 5, 6]])
print(arr2)
print("Shape of 2D array:", arr2.shape)

# 3D array
arr3 = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]])
print(arr3)
print("Shape of 3D array:", arr3.shape)


#Array of zeros
zeros = np.zeros((3, 3))
print(zeros)
# Array of ones
ones = np.ones((2, 4))
print(ones)
# Identity matrix
identity = np.eye(4)
print(identity)
# Array of a specific value
full_array = np.full((2, 3), 7)
print(full_array)

# Array with range of numbers
range_arr = np.arange(1, 11, 2) # Start, Stop, Step
print(range_arr)
# Linearly spaced values
lin_space = np.linspace(0, 100, 5) # 5 values between 0 and
100
print(lin_space)


#Random integer values
rand_int = np.random.randint(1, 100, (3, 3))
print(rand_int)
# Random values between 0 and 1
rand_float = np.random.rand(3, 3)
print(rand_float)
# Standard normal distribution (mean=0, std=1)
rand_norm = np.random.randn(3, 3)
print(rand_norm)
# Random choice from a list
rand_choice = np.random.choice([10, 20, 30, 40, 50], 5)
print(rand_choice)
# Setting a random seed (for reproducibility)
np.random.seed(42)
rand_arr = np.random.rand(5)
print(rand_arr)

#Checking shape
arr = np.array([[1, 2, 3], [4, 5, 6]])
print(arr.shape)
# Reshaping an array
reshaped = arr.reshape(3, 2)
print(reshaped)
# Flattening an array (convert to 1D)
flattened = arr.flatten()
print(flattened)
# Transposing a matrix
transposed = arr.T
print(transposed)

#Accessing elements
arr = np.array([10, 20, 30, 40, 50])
print(arr[0]) # First element
print(arr[-1]) # Last element
# Slicing arrays
print(arr[1:4]) # Elements from index 1 to 3
print(arr[:3]) # First 3 elements
print(arr[::2]) # Every second element
# Slicing 2D array
matrix = np.array([[10, 20, 30], [40, 50, 60], [70, 80, 90]])
print(matrix[1, 2]) # Element at row index 1 and column index
2
print(matrix[:, 1]) # All rows, second column
print(matrix[0:2, 1:3]) # Subset of matrix


arr = np.array([1, 2, 3, 4, 5])
# Element-wise operations
print(arr + 10)
print(arr * 2)
print(arr ** 2)
print(np.sqrt(arr))
# Basic aggregate functions
print(np.sum(arr))
print(np.mean(arr))
print(np.median(arr))
print(np.std(arr))
print(np.var(arr))
print(np.min(arr))
print(np.max(arr))
# Cumulative sum and product
print(np.cumsum(arr))
print(np.cumprod(arr))


arr = np.array([10, 20, 30])
# Shallow copy (view)
view_arr = arr.view()
view_arr[0] = 100
print(arr) # Changes reflect in original array
# Deep copy
copy_arr = arr.copy()
copy_arr[0] = 200
print(arr) # Original array remains unchanged


A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])
# Stacking arrays vertically and horizontally
vertical_stack = np.vstack((A, B))
horizontal_stack = np.hstack((A, B))
print(vertical_stack)
print(horizontal_stack)
# Splitting arrays
split_arr = np.split(np.array([1, 2, 3, 4, 5, 6]), 3)
print(split_arr)



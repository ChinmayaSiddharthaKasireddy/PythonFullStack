import pandas as pd
#Product Prices
product_prices = pd.Series(
[2999, 15999, 52999, 4999, 1999],
index=["Wireless Earbuds", "Smartphone", "Laptop",
"Smartwatch", "Bluetooth Speaker"]
)
print(product_prices)

data = {
"Product": ["Wireless Earbuds", "Smartphone", "Laptop",
"Smartwatch", "Bluetooth Speaker"],
"Brand": ["SoundMax", "TechNova", "ByteCore", "TimeTrack",
"EchoBoom"],
"Price": [2999, 15999, 52999, 4999, 1999],
"Stock": [50, 30, 20, 40, 60]
}
df = pd.DataFrame(data)
print(df)

# Selecting columns
print(df["Product"])
print(df[["Product", "Price"]])

#Filtering rows based on conditions
filtered_df = df[df["Price"] > 10000]
print(filtered_df)

print(df.loc[1, "Product"]) # Select by label
print(df.iloc[1, 2])# Select by position

df.dropna() # Remove missing values
df.fillna(0) # Fill missing values with 0

grouped = df.groupby("Brand")["Price"].mean()
print(grouped)








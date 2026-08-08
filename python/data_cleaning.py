import pandas as pd

#Read csv file
df = pd.read_csv("../data/Sample-Superstore.csv",encoding='latin1')

#Check dataset size
print("Original Shape:", df.shape)

#Find missing values
print("\nMissing Values:",df.isnull().sum())

#Remove duplicates
df = df.drop_duplicates()

#Convert date columns to datetime format
df["Order Date"] = pd.to_datetime(df["Order Date"])
df["Ship Date"] = pd.to_datetime(df["Ship Date"])

df["Order_Year"] = df["Order Date"].dt.year

df["Order_Month"] = df["Order Date"].dt.strftime("%B")

df["Profit_Margin"] = df["Profit"] / df["Sales"]

df["Sales_Per_Order"] = df["Sales"] / df["Quantity"]

df["Year_Month"] = df["Order Date"].dt.to_period("M").astype(str)

#Standardize column names
df.columns = df.columns.str.strip().str.replace(" ","_")

df.to_csv("../data/Sample-Superstore-Cleaned.csv", index=False)

print("Cleaned Shape:", df.shape)
print("\nCleaning Completed Successfully!")
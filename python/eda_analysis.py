import pandas as pd

df = pd.read_csv("../data/Sample-Superstore-Cleaned.csv", encoding='latin1')

print(df.info())

print(df.describe())

total_sales = df["Sales"].sum()
print("Total Sales:", total_sales)

total_profit = df["Profit"].sum()
print("Total Profit:", total_profit)

sales_by_region = df.groupby("Region")["Sales"].sum()
print(sales_by_region)

sales_by_category = df.groupby("Category")["Sales"].sum()
print(sales_by_category)

profit_by_category = df.groupby("Category")["Profit"].sum()
print(profit_by_category)

top_customers = (
    df.groupby("Customer_Name")["Sales"]
    .sum()
    .sort_values(ascending=False)
    .head(10)
)
print(top_customers)

df["Order_Date"] = pd.to_datetime(df["Order_Date"])
df["Year_Month"] = df["Order_Date"].dt.to_period("M").astype(str)
monthly_sales = df.groupby("Year_Month")["Sales"].sum().reset_index()
print(monthly_sales)


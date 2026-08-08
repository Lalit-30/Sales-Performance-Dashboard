# Sales Performance Dashboard

An end-to-end sales analytics project using Python, SQL, and Power BI to clean, analyze, and visualize Superstore sales data.

## Project Overview

This project analyzes sales performance across regions, categories, customers, products, and time periods.

The project follows a complete data analytics workflow:

**Data Cleaning → Exploratory Data Analysis → SQL Analysis → Power BI Dashboard → Business Insights**

## Objectives

- Clean and prepare sales data for analysis
- Perform exploratory data analysis using Python
- Analyze sales and profitability using SQL
- Track key performance indicators
- Identify high-performing regions, categories, customers, and products
- Analyze sales trends over time
- Build an interactive Power BI dashboard

## Tools & Technologies

- **Python**
- **Pandas**
- **MySQL 8.0**
- **SQL**
- **Power BI**
- **DAX**
- **CSV**

## Dataset

The project uses the **Sample Superstore** dataset.

The cleaned dataset contains:

- **9,994 records**
- **25 columns**

The dataset includes information about:

- Orders
- Customers
- Products
- Categories
- Regions
- Sales
- Quantity
- Discounts
- Profit
- Order and shipping dates

## Project Workflow

### 1. Data Cleaning — Python

Python and Pandas were used to:

- Check for missing values
- Remove duplicate records
- Convert date columns
- Standardize column names
- Create additional analytical columns
- Calculate Profit Margin
- Calculate Sales Per Order
- Create Order Year and Order Month fields

The cleaned dataset is available in:

```text
data/Sample-Superstore-Cleaned.csv
```

### 2. Exploratory Data Analysis — Python

EDA was performed to understand:

- Overall sales and profit
- Regional sales performance
- Category performance
- Top customers
- Monthly sales trends
- Profitability patterns

The analysis is available in:

```text
python/eda_analysis.py
```

### 3. SQL Analysis — MySQL

The cleaned dataset was imported into MySQL and analyzed using SQL.

The SQL analysis covers:

- Total sales
- Total profit
- Total orders
- Profit margin
- Sales by region
- Sales and profit by category
- Sales by year and month
- Top customers
- Top products
- Sub-category performance
- Loss-making sub-categories
- Sales by customer segment
- Average discount
- Ship mode analysis
- Yearly sales and profitability

SQL scripts are available in:

```text
sql/
```

### 4. Power BI Dashboard

An interactive Power BI dashboard was created to provide a visual overview of sales performance.

### Key Performance Indicators

- **Total Sales**
- **Total Profit**
- **Total Orders**
- **Profit Margin**

### Dashboard Visualizations

- Monthly Sales Trend
- Sales by Region
- Sales by Category
- Profit by Category
- Top 10 Customers

### Interactive Features

- Year slicer
- Region slicer
- Category slicer
- Interactive visual filtering
- Dynamic Last Refreshed indicator
- Interactive chart tooltips

The Power BI report is available in:

```text
powerbi/Sales_Performance_Dashboard.pbix
```

A PDF version of the dashboard is available in:

```text
report/Sales_Performance_Dashboard.pdf
```

## Key Insights

Based on the analysis:

- The **West region** generates the highest sales.
- **Technology** is the leading category for sales and profit.
- **Sean Miller** is the highest-sales customer.
- Monthly sales show an overall upward trend toward 2017.
- Profitability varies significantly across product sub-categories.

## Project Structure

```text
Sales_Performance_Dashboard/
│
├── .gitignore
├── README.md
│
├── powerbi/
│   └── Sales_Performance_Dashboard.pbix
│
├── report/
│   └── Sales_Performance_Dashboard.pdf
│
├── data/
│   └── Sample-Superstore-Cleaned.csv
│
├── python/
│   ├── data_cleaning.py
│   └── eda_analysis.py
│
└── sql/
    ├── 01_database_setup.sql
    ├── 02_sales_analysis.sql
    ├── 03_customer_analysis.sql
    ├── 04_product_analysis.sql
    └── 05_business_insights.sql
```

## How to Use

### Python

Install the required package:

```bash
pip install pandas
```

Run the data cleaning script:

```bash
python python/data_cleaning.py
```

Run the EDA script:

```bash
python python/eda_analysis.py
```

### SQL

1. Install MySQL 8.0 or later.
2. Open MySQL Workbench.
3. Run:

```text
sql/01_database_setup.sql
```

4. Import the cleaned dataset into the `sales_data` table.
5. Execute the remaining SQL analysis scripts.

### Power BI

1. Open:

```text
powerbi/Sales_Performance_Dashboard.pbix
```

2. Refresh the data if required.
3. Use the slicers and visual interactions to explore the dashboard.

## Dashboard Report

A PDF version of the completed dashboard is available in:

```text
report/Sales_Performance_Dashboard.pdf
```

## Author

**Lalit Sirvi**

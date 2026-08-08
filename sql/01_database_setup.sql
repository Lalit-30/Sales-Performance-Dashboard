CREATE DATABASE sales_performance;

use sales_performance;

CREATE TABLE sales_data (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code INT,
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(12,4),
    Quantity INT,
    Discount DECIMAL(5,4),
    Profit DECIMAL(12,4),
    Order_Year INT,
    Order_Month VARCHAR(20),
    Profit_Margin DECIMAL(10,4),
    Sales_Per_Order DECIMAL(12,4)
);
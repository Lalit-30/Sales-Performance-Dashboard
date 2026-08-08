-- =====================================================
-- Sales Performance Dashboard
-- Sales Analysis
-- MySQL 8.0
-- =====================================================

USE sales_performance;


-- 1. Total Sales
SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data;


-- 2. Total Profit
SELECT
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data;


-- 3. Total Orders
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_data;


-- 4. Overall Profit Margin
SELECT
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percent
FROM sales_data;


-- 5. Sales and Profit by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 6. Sales and Profit by Category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 7. Sales by Year
SELECT
    Order_Year,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Order_Year
ORDER BY Order_Year;


-- 8. Sales by Month
SELECT
    Order_Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Order_Month
ORDER BY Total_Sales DESC;
USE sales_performance;


-- 1. Most Profitable Region
SELECT
    Region,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Profit DESC
LIMIT 1;


-- 2. Most Profitable Category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Profit DESC
LIMIT 1;


-- 3. Best Performing Sub-Category by Profit
SELECT
    Sub_Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Sub_Category
ORDER BY Total_Profit DESC
LIMIT 1;


-- 4. Loss-Making Sub-Categories
SELECT
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


-- 5. Top 10 Products by Profit
SELECT
    Product_Name,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;


-- 6. Top 10 Products by Sales
SELECT
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 7. Sales by Segment
SELECT
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- 8. Average Discount by Category
SELECT
    Category,
    ROUND(AVG(Discount) * 100, 2) AS Average_Discount_Percent
FROM sales_data
GROUP BY Category
ORDER BY Average_Discount_Percent DESC;


-- 9. Orders by Ship Mode
SELECT
    Ship_Mode,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_data
GROUP BY Ship_Mode
ORDER BY Total_Orders DESC;


-- 10. Yearly Sales and Profit
SELECT
    Order_Year,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percent
FROM sales_data
GROUP BY Order_Year
ORDER BY Order_Year;
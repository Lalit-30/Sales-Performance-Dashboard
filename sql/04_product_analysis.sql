USE sales_performance;

-- Top 10 Products by Sales
SELECT
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- Sales and Profit by Sub-Category
SELECT
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;
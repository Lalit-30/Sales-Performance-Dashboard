USE sales_performance;

-- Top 10 Customers by Sales
SELECT
    Customer_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- Top 10 Customers by Profit
SELECT
    Customer_Name,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Customer_Name
ORDER BY Total_Profit DESC
LIMIT 10;
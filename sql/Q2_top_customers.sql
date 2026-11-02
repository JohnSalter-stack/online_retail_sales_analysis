-- Q2: Top Customers by Revenue
-- Who are the highest-value customers?

SELECT
    CustomerID,
    SUM(Revenue) AS total_revenue,
    COUNT(DISTINCT CASE WHEN Is_Return = 0 THEN InvoiceNo END) AS total_orders
FROM online_retail_clean
GROUP BY
    CustomerID
ORDER BY
    total_revenue DESC;
    

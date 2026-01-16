-- Q4: Revenue by Country
-- Which countries generate the most revenue?

SELECT
    Country,
    SUM(Revenue) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail_clean
GROUP BY
    Country
ORDER BY
    total_revenue DESC;

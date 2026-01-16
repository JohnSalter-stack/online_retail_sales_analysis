-- Q3: Top Products by Revenue
-- Which products drive the most revenue?

SELECT
    StockCode,
    Description,
    SUM(Revenue) AS total_revenue,
    SUM(Quantity) AS total_units_sold
FROM online_retail_clean
GROUP BY
    StockCode,
    Description
ORDER BY
    total_revenue DESC;
    
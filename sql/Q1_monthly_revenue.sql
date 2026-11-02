-- Q1: Monthly Revenue Trend
-- Purpose: Analyze revenue trends over time 
-- Author: John Oseyi 
-- Date: 01/2026
-- How does revenue trend over time (monthly)?

SELECT
    Invoice_Year,
    Invoice_Month,
    SUM(Revenue) AS monthly_revenue
FROM online_retail_clean
GROUP BY
    Invoice_Year,
    Invoice_Month
ORDER BY
    Invoice_Year,
    Invoice_Month;

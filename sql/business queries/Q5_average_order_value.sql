-- Q5: Average Order Value (AOV)
-- What is the average revenue per order?

SELECT
    Invoice_Year,
    Invoice_Month,
    SUM(Revenue) / COUNT(DISTINCT InvoiceNo) AS average_order_value
FROM online_retail_clean
GROUP BY
    Invoice_Year,
    Invoice_Month
ORDER BY
    Invoice_Year,
    Invoice_Month;

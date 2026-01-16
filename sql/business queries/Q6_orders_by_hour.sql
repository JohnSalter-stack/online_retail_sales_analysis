-- Q6: Orders by Hour of Day
-- When do customers place orders during the day?

SELECT
    HOUR(Invoice_Time) AS order_hour,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail_clean
GROUP BY
    HOUR(Invoice_Time)
ORDER BY
    order_hour;

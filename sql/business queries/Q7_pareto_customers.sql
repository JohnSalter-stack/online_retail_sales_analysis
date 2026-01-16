-- Q8: Revenue Contribution by Customer
-- Do a small percentage of customers generate most revenue?

SELECT
    CustomerID,
    customer_revenue,
    SUM(customer_revenue) OVER (ORDER BY customer_revenue DESC) AS cumulative_revenue,
    SUM(customer_revenue) OVER () AS total_revenue,
    (SUM(customer_revenue) OVER (ORDER BY customer_revenue DESC)
        / SUM(customer_revenue) OVER ()) * 100 AS cumulative_percentage
FROM (
    SELECT
        CustomerID,
        SUM(Revenue) AS customer_revenue
    FROM online_retail_clean
    GROUP BY
        CustomerID
) ranked_customers
ORDER BY
    customer_revenue DESC;

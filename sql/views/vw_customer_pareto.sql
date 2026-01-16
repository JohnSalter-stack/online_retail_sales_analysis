-- Purpose: Create a Pareto (80/20) view showing cumulative revenue contribution by customer
-- Use case: Identify the proportion of customers contributing the majority of total revenue

CREATE OR REPLACE VIEW vw_customer_pareto AS
SELECT
    CustomerID,
    customer_revenue,
    (SUM(customer_revenue) OVER (ORDER BY customer_revenue DESC)
        / SUM(customer_revenue) OVER ()) * 100 AS cumulative_percentage
FROM (
    SELECT
        CustomerID,
        SUM(Revenue) AS customer_revenue
    FROM online_retail_clean
    GROUP BY
        CustomerID
) ranked_customers;

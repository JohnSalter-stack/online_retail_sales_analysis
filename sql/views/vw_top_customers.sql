-- Purpose: Identify highest-value customers by revenue and order volume
-- Use case: Customer segmentation and value-based analysis

CREATE OR REPLACE VIEW vw_top_customers AS
SELECT
    CustomerID,
    SUM(Revenue) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail_clean
GROUP BY
    CustomerID;

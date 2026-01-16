-- Purpose: Summarise revenue and order volume by country
-- Use case: Compare geographic performance and identify key markets

CREATE OR REPLACE VIEW vw_revenue_by_country AS
SELECT
    Country,
    SUM(Revenue) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail_clean
GROUP BY
    Country;

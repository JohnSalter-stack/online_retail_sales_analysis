-- Purpose: Aggregate revenue by year and month to analyse revenue trends over time
-- Use case: Support time-series analysis and monthly trend visualisations

CREATE OR REPLACE VIEW vw_monthly_revenue_trend AS
SELECT
    Invoice_Year,
    Invoice_Month,
    SUM(Revenue) AS monthly_revenue
FROM online_retail_clean
GROUP BY
    Invoice_Year,
    Invoice_Month;

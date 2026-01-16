-- Purpose: Clean and transform retail data for analysis
-- Input table: online_retail_staging
-- Output table: online_retail_clean
-- Key steps:
-- 1. Fix date and time formats
-- 2. Remove invalid customer IDs
-- 3. Calculate revenue
-- 4. Handle returns

CREATE TABLE online_retail_clean AS
SELECT
    InvoiceNo,
    StockCode,
    Description,
    CustomerID,
    Country,
    Quantity,
    UnitPrice,
    Line_Revenue AS Revenue,
    InvoiceDate,
    DATE(InvoiceDate) AS Invoice_Date,
    TIME(InvoiceDate) AS Invoice_Time,
    YEAR(InvoiceDate) AS Invoice_Year,
    MONTH(InvoiceDate) AS Invoice_Month,
    DAYNAME(InvoiceDate) AS Invoice_Weekday
FROM online_retail_staging
WHERE
    Quantity > 0
    AND UnitPrice > 0
    AND CustomerID IS NOT NULL;

SELECT
    InvoiceNo, StockCode,
    REPLACE(Description, '"', '') AS Description,
    CustomerID, Country, Quantity, UnitPrice, Revenue, Is_Return,
    InvoiceDate, Invoice_Date, Invoice_Time,
    Invoice_Year, Invoice_Month, Invoice_Weekday
FROM online_retail_clean;
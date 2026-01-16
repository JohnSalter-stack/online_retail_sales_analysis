-- Purpose: Create a staging table to store raw retail transactions and
-- supporting diagnostic fields used during data validation and cleaning.
-- Design choice: The table includes both original source columns and
-- derived flag/status columns to identify data quality issues (e.g. returns,
-- invalid customers, pricing anomalies) prior to creating the final clean table.
-- Note: This staging layer allows transparent auditing and repeatable cleaning
-- logic without modifying the raw source data.

CREATE TABLE online_retail_staging (
    InvoiceNo            VARCHAR(20),
    StockCode            VARCHAR(20),
    Description          VARCHAR(255),
    Quantity             INT,
    InvoiceDate          DATETIME,
    UnitPrice            DECIMAL(10,2),
    CustomerID           INT,
    Country              VARCHAR(100),

    CustomerID_Status    VARCHAR(20),
    Description_Status   VARCHAR(20),
    Price_Flag           VARCHAR(20),
    Returns              BOOLEAN,
    Invoice_Date         DATE,
    Invoice_Time         TIME,
    StockCode_Type       VARCHAR(20),
    Line_Revenue         DECIMAL(12,2)
);

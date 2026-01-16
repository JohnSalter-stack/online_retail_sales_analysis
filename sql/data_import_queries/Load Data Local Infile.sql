-- Purpose: Import online retail CSV using LOAD DATA LOCAL INFILE
-- Database: MySQL
-- Source file: Online_Retail_Dataset_Cleaned.csv
-- Output table: online_retail_staging
-- Notes: Handles encoding and delimiter issues

LOAD DATA LOCAL INFILE 'C:/data/Online_Retail_Dataset_Cleaned.csv'
INTO TABLE online_retail_staging
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    @InvoiceDate,
    UnitPrice,
    CustomerID,
    Country,
    CustomerID_Status,
    Description_Status,
    Price_Flag,
    Returns,
    Invoice_Date,
    Invoice_Time,
    StockCode_Type,
    Line_Revenue
)
SET InvoiceDate = STR_TO_DATE(@InvoiceDate, '%d/%m/%Y %H:%i');

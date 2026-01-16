-- Purpose: Parse combined datetime field into separate date and time columns
-- Reason: InvoiceDate was imported as a single datetime value, while downstream
-- analysis and visualisations require independent date and time fields.
-- Note: SQL_SAFE_UPDATES is temporarily disabled to allow a full-table update,
-- then re-enabled immediately to maintain database safety.

SET SQL_SAFE_UPDATES = 0;

UPDATE online_retail_staging
SET
    Invoice_Date = DATE(InvoiceDate),
    Invoice_Time = TIME(InvoiceDate);

SET SQL_SAFE_UPDATES = 1;

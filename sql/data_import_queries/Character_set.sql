-- Purpose: Standardise text encoding to UTF-8 (utf8mb4) to prevent
-- character set and collation errors during data import and querying.
-- Reason: The source dataset contains special characters in text fields
-- (e.g. product descriptions) which can cause import failures or
-- invalid character errors if not handled explicitly.

ALTER TABLE online_retail_staging
CONVERT TO CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

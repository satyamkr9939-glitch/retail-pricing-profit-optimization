-- -- ==============================
-- 01: DATA CLEANING & VALIDATION
-- ==============================

-- 1. Check total records
SELECT COUNT(*) AS total_records
FROM superstore;

-- 2. Check for NULL values
SELECT *
FROM superstore
WHERE order_id IS NULL
   OR sales IS NULL
   OR profit IS NULL
   OR discount IS NULL;

-- 3. Check for duplicate Order IDs
SELECT order_id, COUNT(*)
FROM superstore
GROUP BY order_id
HAVING COUNT(*) > 1;

-- 4. Validate discount range (should be between 0 and 1)
SELECT *
FROM superstore
WHERE discount < 0
   OR discount > 1;

-- 5. Convert order_date to proper DATE format (if needed)
-- Example (MySQL):
-- ALTER TABLE superstore
-- MODIFY order_date DATE;

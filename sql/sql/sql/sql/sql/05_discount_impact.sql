-- ==========================================
-- 05: DISCOUNT IMPACT ON PROFITABILITY
-- ==========================================

-- 1. Sales & Profit by Discount Level
SELECT
    discount,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(*) AS total_orders
FROM superstore
GROUP BY discount
ORDER BY discount;


-- 2. Categorize Discount Levels
SELECT
    CASE
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.20 THEN 'Low Discount'
        WHEN discount <= 0.40 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(*) AS total_orders
FROM superstore
GROUP BY discount_category
ORDER BY total_profit;


-- 3. Profit Margin by Discount Category
SELECT
    CASE
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.20 THEN 'Low Discount'
        WHEN discount <= 0.40 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_category,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percentage
FROM superstore
GROUP BY discount_category
ORDER BY profit_margin_percentage DESC;


-- 4. Identify Loss-Making Orders due to High Discount
SELECT
    order_id,
    discount,
    sales,
    profit
FROM superstore
WHERE discount > 0.30
  AND profit < 0
ORDER BY profit;


-- 5. Region-wise Impact of High Discounts
SELECT
    region,
    ROUND(SUM(sales), 2) AS discounted_sales,
    ROUND(SUM(profit), 2) AS discounted_profit
FROM superstore
WHERE discount > 0.30
GROUP BY region
ORDER BY discounted_profit;

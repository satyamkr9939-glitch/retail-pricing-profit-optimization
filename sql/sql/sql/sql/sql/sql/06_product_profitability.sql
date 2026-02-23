-- ==========================================
-- 06: PRODUCT-LEVEL PROFITABILITY ANALYSIS
-- ==========================================

-- 1. Sales & Profit by Category
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percentage
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;


-- 2. Sales & Profit by Sub-Category
SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percentage
FROM superstore
GROUP BY sub_category
ORDER BY total_profit;


-- 3. Top 10 Most Profitable Products
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


-- 4. Top 10 Loss-Making Products
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;


-- 5. Products with High Sales but Negative Profit
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name
HAVING SUM(sales) > 5000
   AND SUM(profit) < 0
ORDER BY total_profit;

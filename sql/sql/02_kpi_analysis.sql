-- ==========================================
-- 02: CORE KPI ANALYSIS (SALES & PROFIT)
-- ==========================================

-- 1. Overall Business Performance
SELECT 
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percentage,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore;


-- 2. Monthly Sales & Profit Trend
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    ROUND(SUM(sales), 2) AS monthly_sales,
    ROUND(SUM(profit), 2) AS monthly_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS monthly_profit_margin
FROM superstore
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY order_year, order_month;


-- 3. Year-over-Year Growth
SELECT 
    YEAR(order_date) AS order_year,
    ROUND(SUM(sales), 2) AS yearly_sales,
    ROUND(SUM(profit), 2) AS yearly_profit
FROM superstore
GROUP BY YEAR(order_date)
ORDER BY order_year;


-- 4. Average Order Value (AOV)
SELECT 
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM superstore;


-- 5. Profit Distribution (Positive vs Loss Orders)
SELECT 
    CASE 
        WHEN profit > 0 THEN 'Profit'
        WHEN profit = 0 THEN 'Break Even'
        ELSE 'Loss'
    END AS profit_status,
    COUNT(*) AS order_count,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY profit_status;

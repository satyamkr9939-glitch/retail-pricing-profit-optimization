-- ==========================================
-- 03: REGIONAL PERFORMANCE ANALYSIS
-- ==========================================

-- 1. Sales & Profit by Region
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percentage,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;


-- 2. Identify Loss-Making Regions
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY region
HAVING SUM(profit) < 0
ORDER BY total_profit;


-- 3. Regional Monthly Trend (Sales & Profit)
SELECT
    region,
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    ROUND(SUM(sales), 2) AS monthly_sales,
    ROUND(SUM(profit), 2) AS monthly_profit
FROM superstore
GROUP BY region, YEAR(order_date), MONTH(order_date)
ORDER BY region, order_year, order_month;


-- 4. Region-wise Contribution to Total Sales
SELECT
    region,
    ROUND(SUM(sales), 2) AS regional_sales,
    ROUND(
        SUM(sales) / SUM(SUM(sales)) OVER () * 100,
        2
    ) AS sales_contribution_percentage
FROM superstore
GROUP BY region
ORDER BY sales_contribution_percentage DESC;


-- 5. Rank Regions by Profitability
SELECT
    region,
    ROUND(SUM(profit), 2) AS total_profit,
    RANK() OVER (ORDER BY SUM(profit) DESC) AS profit_rank
FROM superstore
GROUP BY region;

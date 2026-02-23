-- ==========================================
-- 04: CUSTOMER SEGMENTATION & RANKING
-- ==========================================

-- 1. Total Sales & Profit per Customer
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC;


-- 2. Rank Customers by Revenue
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS revenue_rank
FROM superstore
GROUP BY customer_name;


-- 3. Identify Top 20% Revenue-Generating Customers (Pareto)
SELECT *
FROM (
    SELECT
        customer_name,
        ROUND(SUM(sales), 2) AS total_sales,
        NTILE(5) OVER (ORDER BY SUM(sales) DESC) AS customer_bucket
    FROM superstore
    GROUP BY customer_name
) t
WHERE customer_bucket = 1;


-- 4. Customer Profitability Classification
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    CASE
        WHEN SUM(profit) > 5000 THEN 'High Value'
        WHEN SUM(profit) BETWEEN 1000 AND 5000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM superstore
GROUP BY customer_name
ORDER BY total_profit DESC;


-- 5. Customers with High Sales but Low / Negative Profit
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY customer_name
HAVING SUM(sales) > 5000 AND SUM(profit) < 0
ORDER BY total_profit;

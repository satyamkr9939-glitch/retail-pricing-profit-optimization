# 🧠 Retail Pricing & Profit Optimization — End-to-End SQL Case Study

## 📌 Overview

This project is an **end-to-end SQL analytics case study** focused on identifying **profit leakage in a retail business**.  
While sales were growing, profitability was inconsistent. The goal was to diagnose *why* and propose **data-driven business actions**.

This case study is structured to reflect how a **startup or business analytics team** would approach a real pricing and profitability problem.

---

## 🏢 Business Problem

The retail business faced the following challenges:

- Revenue was increasing, but profit margins were volatile
- Heavy discounting was suspected to erode margins
- Some regions and products appeared to generate sales but not profit
- Leadership needed **actionable insights**, not just reports

### 🎯 Objective

Use SQL to:
- Identify profit leakage drivers
- Quantify the impact of discounts, regions, customers, and products
- Recommend strategies to improve profitability **without reducing sales**

---

## 📊 Dataset Description

- ~9,000 retail transaction records
- Granularity: order-level
- Key fields:
  - Order ID, Order Date
  - Region, City
  - Customer Name
  - Category, Sub-Category, Product Name
  - Sales, Profit, Discount

### Data Quality Checks Performed
- NULL value validation
- Duplicate order detection
- Discount range validation (0–100%)
- Date format consistency

---

## ❓ Key Business Questions Answered

1. Which regions generate revenue but weak or negative profit?
2. At what discount levels do orders become unprofitable?
3. Which customers contribute the most to revenue and profit?
4. Which products consistently operate at a loss?
5. How can margins be improved without sacrificing growth?

---

## 🧩 Analytical Approach

### 1️⃣ Data Cleaning & Validation
- Verified record completeness
- Checked discount boundaries
- Ensured consistent date handling

📄 File: `01_data_cleaning.sql`

---

### 2️⃣ Core KPI Analysis
- Total Sales, Total Profit, Profit Margin
- Monthly and yearly trends
- Average Order Value (AOV)
- Profit vs Loss order distribution

📄 File: `02_kpi_analysis.sql`

---

### 3️⃣ Regional Performance Analysis
- Sales vs Profit by region
- Identification of loss-making regions
- Regional contribution to total revenue
- Profitability ranking using window functions

📄 File: `03_regional_analysis.sql`

---

### 4️⃣ Customer Segmentation & Value Analysis
- Customer revenue and profit aggregation
- Ranking customers using `RANK()`
- Pareto analysis (Top 20% revenue contributors)
- Identification of high-revenue but low-profit customers

📄 File: `04_customer_segmentation.sql`

---

### 5️⃣ Discount Impact Analysis
- Profitability across discount bands
- Margin comparison by discount category
- Detection of loss-making high-discount orders
- Region-wise impact of aggressive discounting

📄 File: `05_discount_impact.sql`

---

### 6️⃣ Product-Level Profitability
- Category & sub-category margin analysis
- Top profitable products
- Top loss-making products
- High-sales but negative-profit product detection

📄 File: `06_product_profitability.sql`

---

## 🔍 Key Insights

- Discounts above ~30% drive a disproportionate share of losses
- Some regions generate strong sales but consistently weak margins
- Revenue is highly concentrated among a small customer segment
- Several high-volume products consistently operate at negative profit

---

## 💡 Business Recommendations

- Introduce **discount caps** or approval workflows for high discounts
- Reprice or bundle loss-making products
- Focus retention efforts on **high-profit customers**
- Monitor region-level profitability, not just sales

---

## 📈 Estimated Business Impact

- Reduction in loss-making orders
- Margin improvement potential of **10–18%**
- More sustainable growth without aggressive discounting

---

## 🛠 Tools & Skills Demonstrated

- SQL
  - Aggregations & GROUP BY
  - Window functions (RANK, NTILE)
  - CASE-based segmentation
  - Profit margin calculations
- Business analytics & decision framing
- GitHub documentation & project structuring

---

## 📂 Repository Structure



## 🚀 What I Would Do Next

If this project were continued in a real business environment, the next steps would be:

- **A/B test discount thresholds**  
  Experiment with controlled discount levels to measure impact on conversion rate and profit margin.

- **Build a real-time profitability dashboard**  
  Track sales, profit, discount %, and loss-making orders daily to enable faster decisions.

- **Introduce customer lifetime value (CLV) analysis**  
  Identify customers who are profitable long-term, not just high-revenue in the short term.

- **Implement alerting for loss-making products**  
  Automatically flag products or regions that cross predefined loss thresholds.

- **Collaborate with pricing and operations teams**  
  Validate findings with domain experts before implementing pricing or discount policy changes.

- **Extend analysis using predictive models**  
  Forecast demand and margin impact under different pricing scenarios.

These steps would help convert analytical insights into **measurable business outcomes**.

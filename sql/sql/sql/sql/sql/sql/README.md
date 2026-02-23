Retail Pricing & Profit Optimization Case Study
Business Problem

A retail company was experiencing steady revenue growth but inconsistent profitability.
Leadership suspected that aggressive discounting, regional inefficiencies, and certain product categories were driving margin erosion.

The objective of this analysis was to identify profit leakage drivers and recommend data-driven pricing and customer strategies to improve overall profitability.

Dataset Overview

~9,000 retail transactions

Fields: Order Date, Region, Customer, Category, Sub-Category, Product, Sales, Profit, Discount

Data validated for:

NULL values

Duplicate orders

Invalid discount ranges

Key Business Questions

Which regions generate revenue but low profit?

At what discount level do orders turn unprofitable?

Which customers drive the majority of revenue?

Which products consistently operate at a loss?

How can profitability be improved without reducing sales volume?

Analytical Approach
1. Data Cleaning

Validated records

Checked discount boundaries

Ensured date formatting consistency

2. KPI Analysis

Total Sales

Total Profit

Profit Margin %

Monthly and yearly trends

Average Order Value

3. Regional Analysis

Sales vs Profit comparison by region

Region contribution to total revenue

Profitability ranking using window functions

4. Customer Segmentation

Revenue ranking using RANK()

Pareto analysis (Top 20% customers)

Profit-based customer classification

Detection of high-revenue but low-profit customers

5. Discount Impact Analysis

Profit margin by discount category

Identification of loss-making high-discount orders

Region-wise impact of discounting

6. Product Profitability

Category and sub-category margin comparison

Top profitable products

Top loss-making products

High sales but negative profit detection

Key Insights

Discounts above ~30% contribute disproportionately to loss-making orders

Certain regions generate strong revenue but weak margins

Revenue is concentrated among a small percentage of customers

Multiple high-volume products consistently operate at negative margins

Business Impact (Estimated)

Introducing discount caps could reduce loss-making orders significantly

Repricing loss-making SKUs could improve margins by double digits

Focusing on high-value customers reduces dependency on heavy discounting

Tools Used

SQL (Aggregations, Window Functions, CASE logic)

Excel (Data validation)

GitHub (Documentation & version control)

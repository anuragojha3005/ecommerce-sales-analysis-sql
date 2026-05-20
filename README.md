# E-Commerce Sales Analysis Using SQL

## Project Overview

This project focuses on analyzing transactional e-commerce sales data using SQL to generate actionable business insights related to customer behavior, revenue trends, product performance, and sales analysis.

The objective of this project is to demonstrate practical SQL and business intelligence skills by converting raw transactional data into analytical reports and KPI-driven business insights.

---

# Business Problem

E-commerce companies generate large volumes of transactional data daily. Businesses require analytical reporting solutions to monitor:

- Revenue performance
- Customer purchasing behavior
- Product sales trends
- Category-wise sales performance
- City-wise revenue analysis
- Repeat customer behavior
- High-value customer identification

This project transforms raw sales data into meaningful business insights using SQL queries and analytical reporting techniques.

---

# Tools & Technologies Used

- MySQL
- SQL
- Microsoft Excel
- Power BI (Optional)

---

# Skills Demonstrated

- SQL Querying
- Data Analysis
- Business Intelligence
- KPI Reporting
- Revenue Analysis
- Customer Segmentation
- Data Cleaning
- Analytical Reporting
- Data Visualization
- Reporting Automation

---

# Dataset Information

The dataset contains transactional e-commerce sales records including:

- Order ID
- Customer Information
- Product Details
- Category Information
- Quantity Sold
- Revenue Data
- Payment Methods
- City & State Information
- Order Dates

---

# Dataset Columns

| Column Name | Description |
|---|---|
| order_id | Unique order identifier |
| customer_id | Unique customer identifier |
| customer_name | Customer name |
| city | Customer city |
| state | Customer state |
| category | Product category |
| product_name | Product purchased |
| quantity | Quantity sold |
| price | Product price |
| total_amount | Total order value |
| payment_method | Payment type |
| order_date | Order date |

---

# Project Workflow

1. Data Collection
2. Data Cleaning
3. Database Creation
4. SQL Query Development
5. Revenue Analysis
6. Customer Segmentation
7. Sales Performance Analysis
8. KPI Reporting
9. Business Insight Generation

---

# SQL Concepts Used

## Basic SQL
- SELECT
- WHERE
- ORDER BY
- GROUP BY

## Intermediate SQL
- JOINs
- Aggregation Functions
- CASE Statements
- Subqueries

## Advanced SQL
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions

---

# Key Business Questions Solved

- What is the total revenue generated?
- Which products generate maximum sales?
- Which customers contribute the highest revenue?
- Which cities perform best in sales?
- What are the monthly sales trends?
- Which customer segments generate higher revenue?
- Who are the repeat customers?
- Which payment methods are most used?

---

# Key KPIs

- Total Revenue
- Average Order Value
- Total Orders
- Top-Selling Products
- Repeat Customers
- Customer Lifetime Value
- Monthly Sales Trends
- Category-wise Revenue
- City-wise Revenue

---

# SQL Analysis Included

The project includes SQL queries for:

- Revenue Analysis
- Customer Analysis
- Product Performance Analysis
- Customer Segmentation
- City-wise Sales Analysis
- Category-wise Analysis
- Payment Method Analysis
- Monthly Sales Trends
- CTE Queries
- Window Function Queries

---

# Sample SQL Query

```sql
SELECT 
    category,
    SUM(total_amount) AS category_revenue
FROM ecommerce_sales
GROUP BY category
ORDER BY category_revenue DESC;
```

---

# Key Insights

- Electronics category generated the highest revenue.
- Repeat customers contributed significantly to total sales.
- Premium products generated higher average order values.
- Certain cities consistently outperformed others in sales performance.
- Monthly sales analysis highlighted seasonal demand trends.

---

# Business Recommendations

- Increase marketing efforts for high-performing product categories.
- Focus retention strategies on repeat customers.
- Improve inventory planning for top-selling products.
- Optimize business strategies in high-revenue cities.
- Monitor monthly sales trends for demand forecasting.

---

# Folder Structure

```bash
ecommerce-sales-analysis-sql/
│
├── README.md
├── dataset/
│   └── ecommerce_sales_dataset.csv
│
├── sql_queries/
│   └── ecommerce_analysis_queries.sql
```

---

# Key Achievements

- Analyzed transactional sales data using SQL
- Developed KPI-driven analytical reports
- Performed customer segmentation analysis
- Utilized CTEs and window functions for advanced SQL analysis
- Generated business insights supporting data-driven decision-making
- Built optimized SQL reporting workflows

---

# Future Improvements

- Power BI Dashboard Integration
- Real-Time KPI Monitoring
- Predictive Sales Forecasting
- Customer Churn Analysis
- Automated Reporting Solutions

---

# Conclusion

This project demonstrates practical SQL and business intelligence skills through revenue analysis, customer segmentation, KPI reporting, and analytical business reporting using transactional e-commerce sales data.

---

# Author

## Anurag Ojha

- LinkedIn: linkedin.com/in/anurag3005
- GitHub: github.com/anuragojha3005

# E-Commerce Sales Analysis Using SQL

## Project Overview

This project focuses on analyzing e-commerce transactional data using SQL to generate actionable business insights related to revenue trends, customer behavior, product performance, and sales analysis.

The project demonstrates practical SQL and business intelligence skills by converting raw transactional data into analytical reports and KPI-driven insights.

---

# Business Problem

E-commerce businesses generate large amounts of transactional data daily. Organizations require analytical reporting to monitor:

- Revenue performance
- Customer purchasing behavior
- Product sales trends
- Regional sales performance
- Repeat customer behavior
- High-performing product categories

This project transforms raw sales data into actionable business insights using SQL queries and analytical reporting.

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
- Customer Segmentation
- Revenue Analysis
- Data Cleaning
- Analytical Reporting
- Data Visualization

---

# Dataset Information

The dataset contains transactional e-commerce sales data including:

- Customer Information
- Product Details
- Sales Transactions
- Order Details
- Revenue Metrics
- Product Categories

---

# Project Workflow

1. Database Creation
2. Table Creation
3. Data Import
4. Data Cleaning
5. SQL Query Development
6. Revenue Analysis
7. Customer Segmentation
8. Business Insight Generation

---

# Database Schema

## Customers Table
- customer_id
- customer_name
- city
- state

## Products Table
- product_id
- product_name
- category
- price

## Orders Table
- order_id
- customer_id
- order_date
- total_amount

## Order Items Table
- order_item_id
- order_id
- product_id
- quantity
- subtotal

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

# Key KPIs

- Total Revenue
- Top-Selling Products
- Customer Lifetime Value
- Repeat Customer Count
- Monthly Sales Trends
- Category-wise Revenue
- Average Order Value

---

# Key Insights

- Electronics products generated the highest revenue.
- Repeat customers contributed significantly to total sales.
- Certain cities consistently outperformed others in sales volume.
- Premium products generated higher average order values.
- Monthly sales trends highlighted seasonal demand patterns.

---

# Business Recommendations

- Focus marketing efforts on high-performing product categories.
- Implement loyalty programs for repeat customers.
- Increase inventory for top-selling products.
- Improve customer retention strategies for low-engagement users.

---

# Key Achievements

- Analyzed transactional sales datasets using SQL
- Developed analytical business queries using JOINs and CTEs
- Performed customer segmentation analysis
- Generated KPI-driven business insights
- Built optimized SQL reporting workflows

---

# SQL Query Files

The project includes:
- Revenue Analysis Queries
- Product Performance Queries
- Customer Segmentation Queries
- KPI Queries
- Advanced SQL Queries

---

# Sample SQL Query

```sql
SELECT 
    category,
    SUM(subtotal) AS total_revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY category
ORDER BY total_revenue DESC;
```

---

# Folder Structure

```bash
ecommerce-sales-analysis-sql/
│
├── README.md
├── dataset/
├── sql_queries/
```

---

# Future Improvements

- Power BI Dashboard Integration
- Predictive Sales Forecasting
- Customer Churn Analysis
- Real-Time KPI Reporting

---

# Conclusion

This project demonstrates practical SQL and business intelligence skills through analytical reporting, customer segmentation, revenue analysis, and business insight generation.

---

# Author

Anurag Ojha

- LinkedIn: linkedin.com/in/anurag3005
- GitHub: github.com/anuragojha3005

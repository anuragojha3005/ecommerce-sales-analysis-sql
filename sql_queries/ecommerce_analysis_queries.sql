-- 1. TOTAL REVENUE ANALYSIS

SELECT 
    SUM(total_amount) AS total_revenue
FROM ecommerce_sales;


-- 2. TOP CUSTOMERS ANALYSIS

SELECT 
    customer_name,
    SUM(total_amount) AS total_spent
FROM ecommerce_sales
GROUP BY customer_name
ORDER BY total_spent DESC;


-- 3. CATEGORY-WISE SALES ANALYSIS

SELECT 
    category,
    SUM(total_amount) AS category_revenue
FROM ecommerce_sales
GROUP BY category
ORDER BY category_revenue DESC;


-- 4. CITY-WISE SALES ANALYSIS

SELECT 
    city,
    SUM(total_amount) AS city_revenue
FROM ecommerce_sales
GROUP BY city
ORDER BY city_revenue DESC;


-- 5. TOP-SELLING PRODUCTS

SELECT 
    product_name,
    SUM(quantity) AS total_quantity_sold
FROM ecommerce_sales
GROUP BY product_name
ORDER BY total_quantity_sold DESC;


-- 6. CUSTOMER SEGMENTATION ANALYSIS

SELECT 
    customer_name,
    SUM(total_amount) AS total_spent,
    CASE
        WHEN SUM(total_amount) > 100000 THEN 'High Value'
        WHEN SUM(total_amount) BETWEEN 50000 AND 100000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM ecommerce_sales
GROUP BY customer_name;


-- 7. MONTHLY SALES TREND ANALYSIS

SELECT 
    MONTH(order_date) AS month,
    SUM(total_amount) AS monthly_sales
FROM ecommerce_sales
GROUP BY MONTH(order_date)
ORDER BY month;


-- 8. REPEAT CUSTOMERS ANALYSIS

SELECT 
    customer_name,
    COUNT(order_id) AS total_orders
FROM ecommerce_sales
GROUP BY customer_name
HAVING COUNT(order_id) > 1;


-- 9. PAYMENT METHOD ANALYSIS

SELECT 
    payment_method,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;


-- 10. AVERAGE ORDER VALUE

SELECT 
    AVG(total_amount) AS average_order_value
FROM ecommerce_sales;


-- 11. HIGHEST REVENUE GENERATING PRODUCT

SELECT 
    product_name,
    SUM(total_amount) AS product_revenue
FROM ecommerce_sales
GROUP BY product_name
ORDER BY product_revenue DESC
LIMIT 1;


-- 12. CTE QUERY EXAMPLE

WITH category_sales AS (
    SELECT 
        category,
        SUM(total_amount) AS revenue
    FROM ecommerce_sales
    GROUP BY category
)

SELECT *
FROM category_sales;


-- 13. WINDOW FUNCTION QUERY

SELECT 
    customer_name,
    total_spent,
    RANK() OVER(ORDER BY total_spent DESC) AS customer_rank
FROM (
    SELECT 
        customer_name,
        SUM(total_amount) AS total_spent
    FROM ecommerce_sales
    GROUP BY customer_name
) ranked_customers;


-- 14. DAILY SALES ANALYSIS


SELECT 
    order_date,
    SUM(total_amount) AS daily_sales
FROM ecommerce_sales
GROUP BY order_date
ORDER BY daily_sales DESC;


-- 15. STATE-WISE REVENUE ANALYSIS

SELECT 
    state,
    SUM(total_amount) AS total_revenue
FROM ecommerce_sales
GROUP BY state
ORDER BY total_revenue DESC;


-- 16. PRODUCT CATEGORY PERFORMANCE

SELECT 
    category,
    COUNT(product_name) AS total_products_sold,
    SUM(quantity) AS total_quantity,
    SUM(total_amount) AS total_sales
FROM ecommerce_sales
GROUP BY category
ORDER BY total_sales DESC;


-- 17. CUSTOMER PURCHASE FREQUENCY

SELECT 
    customer_name,
    COUNT(order_id) AS purchase_frequency
FROM ecommerce_sales
GROUP BY customer_name
ORDER BY purchase_frequency DESC;


-- 18. MONTHLY REVENUE GROWTH

SELECT 
    MONTH(order_date) AS month,
    SUM(total_amount) AS revenue
FROM ecommerce_sales
GROUP BY MONTH(order_date)
ORDER BY month;


-- 19. TOP 5 HIGH-VALUE CUSTOMERS

SELECT 
    customer_name,
    SUM(total_amount) AS total_spent
FROM ecommerce_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 20. SALES PERFORMANCE SUMMARY


SELECT 
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_sales,
    MAX(total_amount) AS highest_order_value,
    MIN(total_amount) AS lowest_order_value
FROM ecommerce_sales;
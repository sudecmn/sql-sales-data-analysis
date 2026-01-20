-- Database: PostgreSQL
-- Project: SQL-Based Sales Data Analysis
-- Author: Sude Naz Çimen

-- Total order value per order
SELECT o.order_id,
       c.name AS customer_name,
       SUM(p.price * oi.quantity) AS total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id, c.name
ORDER BY total_amount DESC;

-- Top spending customer
SELECT c.name,
       SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;

-- Best selling products
SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Revenue by country
SELECT c.country,
       SUM(p.price * oi.quantity) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.country
ORDER BY revenue DESC;

-- Average order value
SELECT AVG(order_total) AS avg_order_value
FROM (
    SELECT o.order_id,
           SUM(p.price * oi.quantity) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY o.order_id
) sub;

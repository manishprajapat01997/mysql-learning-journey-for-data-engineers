```sql
-- Find customers who placed orders above average order amount
SELECT customer_id
FROM orders
WHERE amount > (SELECT AVG(amount) FROM orders);

-- Total spent by each customer using subquery in FROM
SELECT c.customer_id, spend.total_spent
FROM customers c
JOIN (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
) AS spend ON c.customer_id = spend.customer_id;

-- Combine customer lists from two tables (UNION)
SELECT customer_id FROM customers_2023
UNION
SELECT customer_id FROM customers_2024;

-- Show total orders per customer using subquery in SELECT
SELECT first_name, last_name,
    (SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.customer_id) AS total_orders
FROM customers c;

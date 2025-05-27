📝 Day 6 Task
Write a query to show total quantity of each product ordered, sorted by highest.

Show list of customers with their total amount spent (use join + aggregation).

Show all products that have never been ordered.

Get the latest order of each customer.


-- 1. Total quantity of each product ordered (sorted by highest):

SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;


--  2. Show list of customers with their total amount spent
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY customer_name
ORDER BY total_spent DESC;


--  3. Show all products that have never been ordered
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL;

--  4. Get the latest order of each customer
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    MAX(o.order_date) AS latest_order_date
FROM customers c
JOIN  orders o ON c.customer_id = o.customer_id
GROUP BY  c.customer_id, customer_name;

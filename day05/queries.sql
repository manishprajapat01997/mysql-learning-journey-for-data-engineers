
---



```sql
-- Rank customers by total purchase amount using RANK
SELECT customer_id,
       SUM(amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(amount) DESC) AS customer_rank
FROM orders
GROUP BY customer_id;

-- Calculate running totals of sales by date
SELECT order_date, amount,
       SUM(amount) OVER (ORDER BY order_date) AS running_total
FROM orders;

-- Assign row number per customer based on highest purchase first
SELECT customer_id, order_id, amount,
       ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS rn
FROM orders;

-- Divide all orders into 4 buckets using NTILE
SELECT order_id, amount,
       NTILE(4) OVER (ORDER BY amount DESC) AS quartile
FROM orders;

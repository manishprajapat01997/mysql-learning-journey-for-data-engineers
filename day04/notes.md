# Day 4 – Subqueries and Derived Tables

### ✅ Topics
- Scalar Subqueries
- Correlated Subqueries
- Derived Tables (inline views)
- Filtering by aggregates

### 📌 Example: Top 3 spenders
```sql
SELECT c.first_name, t.total
FROM customers c
JOIN (
    SELECT customer_id, SUM(amount) AS total
    FROM orders
    GROUP BY customer_id
    ORDER BY total DESC
    LIMIT 3
) t ON c.customer_id = t.customer_id;

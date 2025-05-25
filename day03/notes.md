# Day 3 – JOINs and Real-World Queries

### ✅ Topics
- INNER JOIN, LEFT JOIN
- Relationships between tables
- Common use cases: customer-orders

### 📌 Example
```sql
SELECT c.first_name, o.product_name, o.amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

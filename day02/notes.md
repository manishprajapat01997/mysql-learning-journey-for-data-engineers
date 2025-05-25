# Day 2 – Filtering, Sorting, Aggregations

### ✅ Topics
- WHERE, ORDER BY
- Aggregate Functions: COUNT, SUM, AVG, MIN, MAX
- GROUP BY, HAVING

### 💡 Tip:
Use `GROUP BY` when aggregating and `HAVING` to filter groups.

### 📌 Example
```sql
SELECT product_name, SUM(amount) AS total
FROM orders
GROUP BY product_name
HAVING total > 1000;


### 📁 `day02/queries.sql`
```sql
SELECT * FROM orders ORDER BY amount DESC;
SELECT customer_id, COUNT(*) FROM orders GROUP BY customer_id;

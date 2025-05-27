# Day 4: Subqueries & Set Operations

## 🔹 Topics Covered
- Subqueries (Nested Queries)
- Types of Subqueries:
  - In SELECT clause
  - In FROM clause (Derived Tables)
  - In WHERE clause
- Scalar, Row, Table subqueries
- Set Operations:
  - UNION
  - UNION ALL

---

## 📌 What is a Subquery?
A subquery is a query nested inside another query. It can be used to:
- Filter results dynamically
- Calculate intermediate values
- Join with temporary tables

---

## 📘 Subquery in WHERE Clause
Find customers who placed an order above average amount:
```sql
SELECT customer_id, first_name, last_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE amount > (SELECT AVG(amount) FROM orders)
);


📘 Subquery in FROM Clause (Derived Table)
sql
Copy
Edit
SELECT c.customer_id, o_summary.total_spent
FROM customers c
JOIN (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
) o_summary ON c.customer_id = o_summary.customer_id;
📘 Subquery in SELECT Clause
sql
Copy
Edit
SELECT first_name,
    (SELECT COUNT(*) FROM orders WHERE orders.customer_id = customers.customer_id) AS total_orders
FROM customers;
🔁 Set Operations: UNION & UNION ALL
UNION (removes duplicates)
sql
Copy
Edit
SELECT email FROM customers_2023
UNION
SELECT email FROM customers_2024;
UNION ALL (keeps duplicates)
sql
Copy
Edit
SELECT email FROM customers_2023
UNION ALL
SELECT email FROM customers_2024;
💡 Best Practices
Use aliases for derived tables

Avoid correlated subqueries in large datasets

Use EXISTS for faster membership checks on large data

UNION is slower than UNION ALL (due to duplicate removal)

✅ Real-World Use Cases
Role	Use Case
Data Analyst	Compare top spending customers across quarters
Data Engineer	Filter staging data using dynamic thresholds via subquery
BI Developer	Create temporary views with subqueries for reporting

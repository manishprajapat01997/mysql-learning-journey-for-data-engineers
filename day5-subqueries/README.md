# 📚 Day 5: Subqueries & Derived Tables  
**Learn to nest queries for advanced filtering and analytics.**  

👉 [**Back to Main Syllabus**](../../README.md) | [**Day 6: CTEs →**](../day6-ctes/README.md)  

---

## **1. Key Concepts**  
### ✔ **What’s a Subquery?**  
A query inside another query, used in:  
- `WHERE`, `SELECT`, `FROM`, `HAVING`  

### ✔ **Types**  
| Type          | Example Use Case |  
|---------------|------------------|  
| **Scalar**    | `WHERE price > (SELECT AVG(price) FROM products)` |  
| **Column**    | `WHERE id IN (SELECT user_id FROM orders)` |  
| **Correlated**| Row-by-row processing (e.g., compare to department avg) |  

---

## **2. Code Examples**  
### 📌 **Basic Subqueries**  
**Task:** Find products priced above average.  
```sql
SELECT * FROM products 
WHERE price > (SELECT AVG(price) FROM products);

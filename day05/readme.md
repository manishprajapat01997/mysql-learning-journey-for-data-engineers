# 📊 Day 5: Window Functions in MySQL – Data Engineer Journey

#💡 Common Window Functions:
--
-Function - 	Description
-ROW_NUMBER()	 -Assigns a unique sequential number per partition
-RANK()	- Ranks rows with same value with gaps
-DENSE_RANK()	- Ranks rows with same value without gaps
-NTILE(n) -	Divides rows into equal buckets (quantiles)
-SUM() - OVER()	Running total
-AVG() - OVER()	Running average





## Topics Covered:
- ROW_NUMBER()
- RANK()
- NTILE()
- Running Totals using SUM() OVER()

---

## 🧠 Concepts:
Window Functions allow row-wise analytics without grouping.  
Key use-cases:
- Ranking
- Running Totals
- Percentiles (with NTILE)

---

## 🧪 Practice SQL Queries:

### Rank customers by total purchase amount:
```sql
SELECT 
    e.name,
    SUM(s.amount) AS total_sales,
    RANK() OVER (ORDER BY SUM(s.amount) DESC) AS sales_rank
FROM employees e
JOIN sales s ON e.emp_id = s.emp_id
GROUP BY e.emp_id;

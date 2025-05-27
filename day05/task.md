# 📘 Day 5 Tasks: Window Functions

### ✅ 1. Rank customers by total purchase amount
- Use RANK() OVER with SUM(amount)
- Group by customer_id

### ✅ 2. Calculate running total of sales by order_date
- Use SUM() OVER (ORDER BY order_date)

### ✅ 3. Assign a row number to each order by customer
- Use ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY amount DESC)

### ✅ 4. Divide orders into 4 quartiles by amount
- Use NTILE(4) OVER (ORDER BY amount DESC)

---

🎯 Bonus:
- Use DENSE_RANK and compare with RANK()
- Combine ROW_NUMBER and filtering (e.g., top 1 order per customer)

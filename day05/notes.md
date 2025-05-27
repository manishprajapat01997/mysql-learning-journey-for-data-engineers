# Day 5: Window Functions

## 🔹 Topics Covered
- Introduction to Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- NTILE()
- PARTITION BY and ORDER BY in Window Functions
- Running totals using SUM() OVER

---

## 🧠 What Are Window Functions?
Window functions perform calculations across a set of rows related to the current row — **without collapsing the result set** like GROUP BY.

---

## 📘 ROW_NUMBER()
Assigns a unique sequential number to each row within the partition.

```sql
SELECT customer_id, order_id, amount,
       ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS row_num
FROM orders;
📘 RANK() vs DENSE_RANK()
RANK() leaves gaps in ranking if there's a tie.

DENSE_RANK() does not leave gaps.

sql
Copy
Edit
SELECT customer_id, amount,
       RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS rank,
       DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS dense_rank
FROM orders;
📘 NTILE(n)
Distributes rows into n buckets (tiles) as evenly as possible.

sql
Copy
Edit
SELECT customer_id, amount,
       NTILE(4) OVER (ORDER BY amount DESC) AS quartile
FROM orders;
📘 Running Totals with SUM() OVER
sql
Copy
Edit
SELECT order_date, amount,
       SUM(amount) OVER (ORDER BY order_date) AS running_total
FROM orders;
💡 Use Cases
Role	Use Case
Data Analyst	Rank customers by revenue
BI Developer	Generate leaderboard reports
Data Engineer	Prepare data for percentile-based slicing

✅ Tips
Always use ORDER BY inside OVER() to control row sequence.

Use PARTITION BY to reset the function per group (e.g., per customer).

Unlike GROUP BY, window functions don’t reduce the number of rows.

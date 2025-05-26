# Day 5 – MySQL String Functions & Data Cleaning

## Objectives
- Learn to use MySQL string functions
- Clean and standardize names, emails, and product names
- Extract meaningful text from fields (e.g., domains from emails)

---

## Topics Covered

### String Concatenation
```sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM customers;

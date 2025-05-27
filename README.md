# 🐬 20 Days of MySQL – Learning Journey for Data Engineers & Data Analysts

Welcome to my 20-day journey of mastering **MySQL** with a practical focus on real-world use cases for **Data Engineers** and **Data Analysts**.

This repository contains **daily structured notes**, **SQL queries**, **practice tasks**, and **explained examples**—from beginner to advanced level.

---
## 🚀 Journey Outline

### ✅ Day 1: Introduction & Basics of MySQL
**Topics:** Installing MySQL, Basic SQL Queries, Data Types  
**Practice:**
- Create a database and table (e.g., `customers`)
- Insert rows and query using `SELECT`, `WHERE`
- 
---

### ✅ Day 2: Filtering, Sorting, Aggregations
**Topics:** `WHERE`, `ORDER BY`, `COUNT`, `SUM`, `GROUP BY`, `HAVING`  
**Practice:**
- Query sales data: total sales by region
- Filter sales greater than a threshold

---

### ✅ Day 3: Joins & Relationships
**Topics:** `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`  
**Practice:**
- Join `orders` with `customers` on `customer_id`
- List all customers and their orders (including those without)

---

### ✅ Day 4: Subqueries & Set Operations
**Topics:** Subqueries, `UNION`, `UNION ALL`  
**Practice:**
- Find customers with orders above average amount
- Combine result sets using `UNION`

---

### ✅ Day 5: Window Functions
**Topics:** `ROW_NUMBER()`, `RANK()`, `NTILE()`  
**Practice:**
- Rank customers by total purchase amount
- Running totals of sales by date

---

### ✅ Day 6: Data Modeling & Schema Design
**Topics:** Normalization, Denormalization, Indexing  
**Practice:**
- Normalize flat sales table into multiple related tables
- Create indexes for performance on filter columns

---

### ✅ Day 7: Data Manipulation & ETL Basics
**Topics:** `INSERT`, `UPDATE`, `DELETE`, Transactions, Bulk Loading  
**Practice:**
- Load CSV using `LOAD DATA INFILE`
- Use transactions to update order status safely

---

### ✅ Day 8: Views, Stored Procedures, Functions
**Topics:** Views, Stored Procedures, User Functions  
**Practice:**
- Create a view for complex joins
- Write a stored procedure to insert new customer records

---

### ✅ Day 9: Performance Tuning & Query Optimization
**Topics:** `EXPLAIN`, Indexes, Partitioning  
**Practice:**
- Use `EXPLAIN` to analyze slow queries
- Add indexes and observe speed improvements

---

### ✅ Day 10: Working with Time-Series & JSON Data
**Topics:** Date Functions, JSON Data Type  
**Practice:**
- Extract year/month from order dates
- Store and query JSON metadata

---

### ✅ Day 11: Backup, Restore & Security Basics
**Topics:** Backup Strategies, User Permissions  
**Practice:**
- Take backup with `mysqldump`
- Create restricted user with read-only access

---

### ✅ Day 12: Connecting MySQL with Data Tools
**Topics:** Python, Airflow, BI Tools Integration  
**Practice:**
- Use `pandas` + `mysql-connector` to query data
- Create Airflow DAG to run SQL extract

---

### ✅ Day 13: Advanced ETL Techniques & Automation
**Topics:** CDC, Triggers, Event Scheduler  
**Practice:**
- Trigger for logging updates
- Event scheduler for daily aggregation

---

### ✅ Day 14: Real-World Analytics & Reporting
**Topics:** Complex Queries, Conditional Aggregation  
**Practice:**
- Monthly sales by product and region
- Status-wise count using conditional logic

---

### ✅ Day 15: Capstone Project
**Task:** Build an End-to-End Pipeline
- Ingest sample data
- Clean/transform using SQL
- Generate reports
- Optimize with indexes & queries

---

## 🔍 Extra Deep Dive Days

### 🔸 Day 16: MySQL Cluster & Replication
**Topics:** Master-Slave Replication, Failover  
**Practice:** Set up and query replica database

---

### 🔸 Day 17: Advanced Security & Auditing
**Topics:** Roles, SSL, Encryption, Audit Logs  
**Practice:** Create roles, enable and analyze audit logs

---

### 🔸 Day 18: MySQL with Big Data Ecosystems
**Topics:** Hive, Spark, Kafka Integration  
**Practice:** JDBC to Spark, Export for Hive

---

### 🔸 Day 19: Advanced JSON & Spatial Data
**Topics:** JSON Parsing, Spatial Indexes  
**Practice:** Parse JSON arrays, store/query spatial coordinates

---

### 🔸 Day 20: Latest MySQL 8+ Features
**Topics:** CTEs, Invisible Indexes, Window Enhancements  
**Practice:** Use CTEs, benchmark with invisible indexes

---

## 🧠 Who This Is For
- **Beginners** looking to master SQL fundamentals
- **Aspiring Data Analysts/Engineers** wanting real-world experience
- **Professionals** aiming to upskill with MySQL 8+ features

---

## 🛠 Prerequisites
- Basic knowledge of SQL (recommended but not mandatory)
- MySQL installed locally or access to cloud-based MySQL
- Familiarity with Python for integration tasks

---

### 📂 Folder Structure
Each day has:
- `notes.md` – Concepts, examples, and explanations
- `queries.sql` – SQL practice queries
- `task.md` – Daily challenge or real-world use case

---
## 📌 Technologies
- MySQL
- SQL Workbench
- GitHub

---

## 🤝 Connect with Me

- [LinkedIn – Manish Kumar Prajapat](https://www.linkedin.com/in/manish-kumar-prajapat-248757282)

---

## 📬 Contact
Created by: Manish Kumar  
Contact: manishprajapat01997@gmail.com  
License: MIT

---

⭐ If you find this helpful, give it a star ⭐ and follow for more data content!



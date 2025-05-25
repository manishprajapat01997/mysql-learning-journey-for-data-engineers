# Day 1 – Intro to MySQL & Basic Queries

### ✅ Topics Covered
- What is MySQL?
- Why SQL matters for Data Engineers & Analysts
- Creating Databases and Tables
- Inserting & Selecting Data
- Filtering with WHERE and Date

### 📌 Example
```sql
CREATE DATABASE sampledb;
USE sampledb;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO customers (first_name, last_name, email)
VALUES ('John', 'Doe', 'john@example.com');

SELECT * FROM customers;

# Day 6: Data Modeling & Schema Design

## 🔹 Topics Covered
- What is Data Modeling?
- Normalization: 1NF, 2NF, 3NF
- Denormalization: When & Why
- Entity-Relationship (ER) modeling basics
- Indexing strategies
- Primary vs Foreign Keys
- Surrogate vs Natural Keys

---

## 💡 Data Modeling Overview
Data modeling is the process of designing the structure of a database to organize data efficiently, reduce redundancy, and ensure consistency.

---

## 📘 Normalization
The process of organizing data to minimize redundancy.

### 1NF – Atomic Columns
- No repeating groups or arrays
- All values must be scalar

### 2NF – Full Functional Dependency
- Must be in 1NF
- No partial dependency on part of a composite key

### 3NF – No Transitive Dependency
- Must be in 2NF
- Non-key attributes must depend only on the primary key

---

## 📘 Denormalization
The process of combining tables to reduce joins and improve read performance — at the cost of redundancy.

Use cases:
- Analytics
- Reporting
- Real-time dashboards

---

## 📘 Indexing
Used to speed up queries.

### Common Index Types:
- **Single-column index**: `CREATE INDEX idx_customer_id ON orders(customer_id);`
- **Composite index**: `CREATE INDEX idx_customer_date ON orders(customer_id, order_date);`

---

## 📘 Primary vs Foreign Keys
- **Primary Key**: Uniquely identifies a row
- **Foreign Key**: Creates relationship with another table

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

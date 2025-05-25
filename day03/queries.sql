-- Create a new database and use it
CREATE DATABASE my_sql_journey;
USE my_sql_journey;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100)
);

INSERT INTO customers (customer_id, first_name, last_name, email) VALUES
(1, 'Alice', 'Smith', 'alice@example.com'),
(2, 'Bob', 'Jones', 'bob@example.com'),
(3, 'Alice', 'Brown', 'alice.b@example.com'),
(4, 'David', 'Lee', 'david@example.com'),
(5, 'Emma', 'Clark', 'emma@example.com'),
(6, 'Bob', 'White', 'bob.w@example.com'),
(7, 'Grace', 'Hall', 'grace@example.com'),
(8, 'John', 'Doe', 'john.doe@example.com'),
(9, 'Emily', 'Stone', 'emily@example.com'),
(10, 'Chris', 'Evans', 'chris@example.com'),
(11, 'Sophia', 'King', 'sophia@example.com'),
(12, 'Daniel', 'Lee', 'daniel@example.com'),
(13, 'Bob', 'Taylor', 'bob.t@example.com'),
(14, 'Mia', 'Adams', 'mia@example.com'),
(15, 'Lucas', 'Hill', 'lucas@example.com'),
(16, 'Alice', 'Walker', 'alice.w@example.com'),
(17, 'John', 'Wright', 'john.w@example.com'),
(18, 'Ethan', 'Green', 'ethan@example.com'),
(19, 'Lily', 'Scott', 'lily@example.com'),
(20, 'Zoe', 'Baker', 'zoe@example.com');



CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_name VARCHAR(100),
  order_date DATE,
  amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, product_name, order_date, amount) VALUES
(1, 1, 'Laptop', '2024-05-10', 1200.00),
(2, 2, 'Mouse', '2024-05-12', 25.99),
(3, 3, 'Keyboard', '2024-05-12', 55.50),
(4, 5, 'Monitor', '2024-05-13', 200.00),
(5, 6, 'Webcam', '2024-05-14', 75.25),
(6, 8, 'Chair', '2024-05-15', 150.00),
(7, 1, 'Headphones', '2024-05-16', 89.99),
(8, 10, 'Desk Lamp', '2024-05-17', 45.00),
(9, 12, 'Docking Station', '2024-05-18', 120.00),
(10, 14, 'Microphone', '2024-05-19', 90.00),
(11, 3, 'SSD', '2024-05-20', 130.00),
(12, 20, 'Tablet', '2024-05-21', 350.00);

SHOW TABLES ;
SELECT * FROM customers;
SELECT * FROM orders;




-- 1. INNER JOIN – customers with orders

-- select * from customers c
select c.first_name,o.product_name 
from customers c
INNER JOIN orders o ON c.customer_id = o.customer_id

-- 2. LEFT JOIN – all customers, even those without orders

SELECT c.first_name ,c.last_name , o.product_name,o.amount
FROM customers.c
LEFT JOIN orders o ON c.customer_id = o.customer_id;


SELECT c.first_name, c.last_name, o.product_name, o.amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;



SELECT c.first_name, COUNT(o.order_id) AS total_orders, SUM(o.amount) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.first_name
ORDER BY total_spent DESC;




CREATE DATABASE comp_day6;
use comp_day6;

-- Tables Setup
-- ✅ customers Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- ✅ orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ✅ products Table

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

-- ✅ order_items Table

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

show tables;

-- add records 
INSERT INTO customers (customer_id, first_name, last_name, email) VALUES
(1, 'Alice', 'Smith', 'alice.smith@gmail.com'),
(2, 'Bob', 'Johnson', 'bob_j@yahoo.com'),
(3, 'Charlie', 'Lee', 'charlie.lee@hotmail.com'),
(4, 'David', 'Kim', 'david_kim@gmail.com'),
(5, 'Emma', 'Brown', 'emma.b@gmail.com'),
(6, 'Fiona', 'Davis', 'fiona.davis@gmail.com'),
(7, 'George', 'Miller', 'george.miller@outlook.com'),
(8, 'Hannah', 'Wilson', 'hannahw@yahoo.com'),
(9, 'Ian', 'Taylor', 'ian.t@gmail.com'),
(10, 'Jane', 'Moore', 'jane_moore@gmail.com'),
(11, 'Kyle', 'Anderson', 'k.anderson@gmail.com'),
(12, 'Lily', 'Thomas', 'lily_thomas@gmail.com');


-- DELETE FROM orders WHERE order_id BETWEEN 1001 AND 1012;

INSERT INTO products (product_id, product_name) VALUES
(201, 'Laptop'),
(202, 'Smartphone'),
(203, 'Tablet'),
(204, 'Headphones'),
(205, 'Monitor'),
(206, 'Keyboard'),
(207, 'Mouse'),
(208, 'Printer'),
(209, 'Webcam'),
(210, 'USB Drive');


INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(1001, 1, '2023-08-01', 300.50),
(1002, 2, '2023-08-03', 150.00),
(1003, 1, '2023-08-10', 250.00),
(1004, 4, '2023-08-12', 500.00),
(1005, 5, '2023-08-13', 700.00),
(1006, 6, '2023-08-15', 200.00),
(1007, 7, '2023-08-16', 650.00),
(1008, 10, '2023-08-20', 400.00),
(1009, 2, '2023-08-21', 50.00),
(1010, 1, '2023-08-22', 320.00),
(1011, 9, '2023-08-24', 900.00),
(1012, 12, '2023-08-25', 100.00);



INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1001, 201, 1),
(2, 1001, 204, 2),
(3, 1002, 203, 1),
(4, 1003, 202, 1),
(5, 1004, 205, 2),
(6, 1005, 201, 1),
(7, 1005, 203, 2),
(8, 1006, 208, 1),
(9, 1007, 206, 1),
(10, 1007, 207, 2),
(11, 1008, 203, 1),
(12, 1009, 210, 3),
(13, 1010, 202, 1),
(14, 1011, 209, 2),
(15, 1012, 204, 1);


-- 🔸 1. Get all orders with customer names
SELECT 
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;


-- 🔸 2. List all customers even if they haven't placed any orders

SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    o.order_id,
    o.amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- 🔸 3. Show all order items with their product names
show tables;
select * from order_items;
select * from products;

SELECT
oi.order_id,
p.product_name,
oi.quantity
FROM order_items oi
INNER JOIN products p on oi.product_id = p.product_id;

-- 🔸 4. Combine orders, customers, and order items (multi-join) 

SELECT 
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    p.product_name,
    oi.quantity,
    o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;


-- 5. Customers without orders (anti-join using LEFT JOIN and IS NULL)
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;




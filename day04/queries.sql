
-- Day 4: Subqueries and Derived Tables in MySQL

-- a. Scalar Subquery (returns a single value)

SELECT first_name, last_name
FROM customers
WHERE customer_id = (
    SELECT customer_id
    FROM orders
    WHERE product_name = 'Tablet'
    LIMIT 1
);

-- b. Row Subquery (returns a row of values)
SELECT *
FROM customers
WHERE (first_name, last_name) = (
    SELECT first_name, last_name
    FROM customers
    WHERE customer_id = 1
);


-- c. Column Subquery (returns a single column of values)
SELECT first_name, last_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE amount > 100
);

select first_name ,last_name 
from customers
where customer_id IN (
			select customer_id
            from orders
            where amount >150);
            
-- 3. Derived Tables (Subqueries in the FROM clause)
-- Derived tables let you write subqueries that act like temporary tables.

SELECT first_name,last_name ,total_spent
FROM (
    SELECT c.customer_id, c.first_name, c.last_name , SUM(o.amount) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
) AS spending_summary
WHERE total_spent > 200;


-- 4. Correlated Subqueries
-- These refer to the outer query for each row.

SELECT c.first_name, c.last_name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id AND o.amount > 120
);

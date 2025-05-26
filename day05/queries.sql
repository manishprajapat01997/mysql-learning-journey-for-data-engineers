-- ✅ Day 5 – MySQL String Functions & Data Cleaning

--  1. String Concatenation
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM customers;

-- 2 Changing Case
SELECT UPPER(first_name), LOWER(email) FROM customers;

-- 3. Trimming Spaces
SELECT TRIM('   Hello   ') AS trimmed;


-- 4. Standardize all customer emails to lowercase

SELECT LOWER(email) 
 FROM customers;


SELECT UPPER(email) AS clean_email FROM customers;

-- 5. Find customers with first name length > 6
SELECT * FROM customers WHERE LENGTH(first_name) > 5;

-- 6. Count emails per domain
SELECT SUBSTRING_INDEX(email, '@', -1) AS domain, COUNT(*) AS total_users
FROM customers
GROUP BY domain
ORDER BY total_users DESC
LIMIT 3;

-- 7. Clean product names (replace underscores with spaces)
SELECT REPLACE(product_name, '_', ' ') AS clean_name FROM orders;


-- Pattern Matching
SELECT * FROM customers WHERE email LIKE '@gmail.com';
SELECT * FROM customers WHERE email LIKE '@example.com';



-- Finding Position
SELECT LOCATE('@', email),email FROM customers;

-- Replacing Text
SELECT REPLACE(email, 'example.com', 'gmail.com') FROM customers;


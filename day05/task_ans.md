
--  Task 1: Clean Up Customer Data
-- ✅ 1. Find all customers where first_name or last_name is empty or null:
SELECT * 
FROM customers 
WHERE first_name IS NULL OR last_name IS NULL 
   OR TRIM(first_name) = '' OR TRIM(last_name) = '';

--  2. Trim all whitespace from names:
SELECT 
    customer_id,
    TRIM(first_name) AS trimmed_first_name,
    TRIM(last_name) AS trimmed_last_name
FROM customers;


-- 3. Make all emails lowercase:
SELECT 
    customer_id, 
    LOWER(email) AS clean_email 
FROM customers;

-- 4. Extract email domains and group by domain:
SELECT 
    SUBSTRING_INDEX(email, '@', -1) AS domain, 
    COUNT(*) AS user_count
FROM customers
GROUP BY domain;


-- Task 2: Email Report
-- ✅ 1. Count how many users use gmail.com, yahoo.com, etc.:
SELECT 
    SUBSTRING_INDEX(email, '@', -1) AS domain, 
    COUNT(*) AS user_count
FROM customers
GROUP BY domain;


-- 2. Show top 3 most used email domains:
SELECT 
    SUBSTRING_INDEX(email, '@', -1) AS domain, 
    COUNT(*) AS user_count
FROM customers
GROUP BY domain
ORDER BY user_count DESC
LIMIT 3;


--  Task 3: Product Cleaning
-- (Assuming you have a products table with a column product_name)

-- ✅ 1. Replace underscores (_) in product names with spaces:

SELECT 
    product_id,
    REPLACE(product_name, '_', ' ') AS clean_product_name
FROM products;

-- 2. Capitalize product names manually using SUBSTRING() & CONCAT():
SELECT 
    product_id,
    CONCAT(
        UPPER(SUBSTRING(product_name, 1, 1)),
        LOWER(SUBSTRING(product_name, 2))
    ) AS capitalized_name
FROM products;









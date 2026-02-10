
-- ============================================
-- SQL BASICS: SELECT STATEMENT
-- ============================================

-- Select all columns from the customers table
SELECT *
FROM customers;

-- Select specific columns only
SELECT
    first_name,
    country,
    score
FROM customers;

-- Best practice example:
-- Avoid SELECT * when you only need a few columns
SELECT
    customer_id,
    first_name,
    last_name
FROM customers;

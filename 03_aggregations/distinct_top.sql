-- ============================================
-- DISTINCT
-- ============================================

-- Get unique list of countries
SELECT DISTINCT
    country
FROM customers;


-- ============================================
-- TOP
-- ============================================

-- Top 3 customers (no specific order)
SELECT TOP (3) *
FROM customers;

-- Top 3 customers by highest score
SELECT TOP (3) *
FROM customers
ORDER BY score DESC;

-- Top 2 most recent orders
SELECT TOP (2) *
FROM orders
ORDER BY order_date DESC;

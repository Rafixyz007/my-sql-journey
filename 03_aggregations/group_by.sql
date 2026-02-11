-- ============================================
-- GROUP BY & AGGREGATE FUNCTIONS
-- ============================================

-- Total score per country
SELECT
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;

-- Total score and number of customers per country
SELECT
    country,
    SUM(score) AS total_score,
    COUNT(customer_id) AS total_customers
FROM customers
GROUP BY country;

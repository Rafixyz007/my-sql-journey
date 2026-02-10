-- ============================================
-- SORTING DATA: ORDER BY
-- ============================================

-- Sort all customers by score descending (highest first)
SELECT *
FROM customers
ORDER BY score DESC;

-- Sort all customers by score ascending (lowest first)
SELECT *
FROM customers
ORDER BY score ASC;

-- Combine filtering and sorting
SELECT *
FROM customers
WHERE country = 'Germany'
ORDER BY score DESC;

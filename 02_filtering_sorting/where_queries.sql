-- ============================================
-- FILTERING DATA: WHERE CLAUSE
-- ============================================

-- Select rows where score is not 0
SELECT *
FROM customers
WHERE score != 0;

-- Select rows where country is Germany and score >= 500
SELECT *
FROM customers
WHERE country = 'Germany' AND score >= 500;

-- Select rows using OR condition
SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA';

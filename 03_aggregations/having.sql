-- ============================================
-- HAVING CLAUSE
-- ============================================

-- Average score per country (excluding zero scores)
SELECT
    country,
    AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;

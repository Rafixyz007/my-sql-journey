-- ============================================
-- LEFT ANTI JOIN
-- Customers without orders
-- ============================================

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;


-- ============================================
-- RIGHT ANTI JOIN
-- Orders without customers
-- ============================================

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

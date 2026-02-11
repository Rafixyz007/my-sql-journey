-- ============================================
-- INNER JOIN
-- ============================================

-- Returns only matching rows from both tables
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id;


-- ============================================
-- LEFT JOIN
-- ============================================

-- Returns all customers and matching orders
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id;


-- ============================================
-- RIGHT JOIN
-- ============================================

SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;


-- ============================================
-- FULL JOIN
-- ============================================

SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
FULL JOIN orders AS o
ON c.customer_id = o.customer_id;

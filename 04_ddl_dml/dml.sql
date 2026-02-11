-- ============================================
-- DML: DATA MANIPULATION LANGUAGE
-- ============================================

-- Insert new records into customers
INSERT INTO customers (first_name, last_name, country, score)
VALUES
    ('Anna', 'Max', 'USA', NULL),
    ('Sam', 'Dom', NULL, 100);


-- Create persons table again (clean version)
CREATE TABLE persons(
    id INT NOT NULL PRIMARY KEY,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE NULL,
    phone VARCHAR(15) NOT NULL
);

-- Insert data from another table
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
    customer_id,
    first_name,
    NULL,
    'Unknown'
FROM customers;

-- Update data
UPDATE customers
SET score = 0
WHERE customer_id = 5;


-- Delete specific rows
DELETE FROM demo
WHERE customer_id > 5;

-- Remove all rows quickly
TRUNCATE TABLE demo;

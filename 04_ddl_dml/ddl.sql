-- ============================================
-- DDL: DATA DEFINITION LANGUAGE
-- ============================================

-- Create a new table
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50),
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_person PRIMARY KEY (id)
);

-- View table
SELECT *
FROM persons;

-- Add a new column
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

-- Drop a column
ALTER TABLE persons
DROP COLUMN phone;

-- Drop the entire table
DROP TABLE persons;

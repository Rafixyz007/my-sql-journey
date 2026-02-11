-- ============================================
-- DATABASE
-- ============================================

USE SalesDB;


-- ============================================
-- UNION
-- Combines results and removes duplicates
-- ============================================

SELECT FirstName, LastName
FROM Sales.Customers

UNION

SELECT FirstName, LastName
FROM Sales.Employees;


-- ============================================
-- UNION ALL
-- Combines results and keeps duplicates
-- ============================================

SELECT FirstName, LastName
FROM Sales.Customers

UNION ALL

SELECT FirstName, LastName
FROM Sales.Employees;


-- ============================================
-- EXCEPT
-- Returns rows from first query that are NOT in second query
-- ============================================

SELECT FirstName, LastName
FROM Sales.Employees

EXCEPT

SELECT FirstName, LastName
FROM Sales.Customers;


-- ============================================
-- INTERSECT
-- Returns only the matching rows between both queries
-- ============================================

SELECT FirstName, LastName
FROM Sales.Customers

INTERSECT

SELECT FirstName, LastName
FROM Sales.Employees;


-- ============================================
-- REAL-WORLD EXAMPLE
-- Combining Orders and OrdersArchive tables
-- ============================================

SELECT
    'Orders' AS sourceTable,
    OrderID,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.Orders

UNION

SELECT
    'OrdersArchive' AS sourceTable,
    OrderID,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.OrdersArchive

ORDER BY OrderID;

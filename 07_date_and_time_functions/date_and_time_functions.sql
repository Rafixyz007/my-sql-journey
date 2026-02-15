-- ============================================
-- DATABASE
-- ============================================

USE SalesDB;

-- ============================================
-- SELECT BASIC DATES
-- ============================================

SELECT
    OrderID,
    OrderDate,
    ShipDate,
    CreationTime
FROM Sales.Orders;

-- Current system date and time
SELECT
    OrderID,
    CreationTime,
    GETDATE() AS Today
FROM Sales.Orders;

-- Hardcoded date
SELECT
    OrderID,
    CreationTime,
    '2026-02-12' AS HardcodedDate
FROM Sales.Orders;

-- ============================================
-- EXTRACT YEAR, MONTH, DAY
-- ============================================

SELECT
    OrderID,
    CreationTime,
    YEAR(CreationTime) AS Year,
    MONTH(CreationTime) AS Month,
    DAY(CreationTime) AS Day
FROM Sales.Orders;

-- ============================================
-- DATEPART
-- ============================================

SELECT
    OrderID,
    CreationTime,
    DATEPART(YEAR, CreationTime) AS DatePart_Year,
    DATEPART(MONTH, CreationTime) AS DatePart_Month,
    DATEPART(DAY, CreationTime) AS DatePart_Day,
    DATEPART(HOUR, CreationTime) AS DatePart_Hour,
    DATEPART(MINUTE, CreationTime) AS DatePart_Min,
    DATEPART(SECOND, CreationTime) AS DatePart_Sec,
    DATEPART(QUARTER, CreationTime) AS DatePart_Quarter,
    DATEPART(WEEK, CreationTime) AS DatePart_Week,
    DATEPART(WEEKDAY, CreationTime) AS DatePart_Weekday,
    DATEPART(ISO_WEEK, CreationTime) AS DatePart_ISO_Week
FROM Sales.Orders;

-- ============================================
-- DATENAME
-- ============================================

SELECT
    OrderID,
    CreationTime,
    DATENAME(MONTH, CreationTime) AS Month_Name,
    DATENAME(WEEKDAY, CreationTime) AS Day_Name
FROM Sales.Orders;

-- ============================================
-- DATETRUNC
-- ============================================

SELECT
    OrderID,
    CreationTime,
    DATETRUNC(MINUTE, CreationTime) AS DateTrunc_Min,
    DATETRUNC(HOUR, CreationTime) AS DateTrunc_Hour,
    DATETRUNC(DAY, CreationTime) AS DateTrunc_Day,
    DATETRUNC(MONTH, CreationTime) AS DateTrunc_Month,
    DATETRUNC(YEAR, CreationTime) AS DateTrunc_Year
FROM Sales.Orders;

-- Count by truncated month
SELECT
    DATETRUNC(MONTH, CreationTime) AS Creation_Month,
    COUNT(*) AS Total
FROM Sales.Orders
GROUP BY DATETRUNC(MONTH, CreationTime);

-- Count by truncated day
SELECT
    DATETRUNC(DAY, CreationTime) AS Creation_Day,
    COUNT(*) AS Total
FROM Sales.Orders
GROUP BY DATETRUNC(DAY, CreationTime);

-- ============================================
-- EOMONTH (End of Month)
-- ============================================

SELECT
    OrderID,
    CreationTime,
    EOMONTH(CreationTime) AS End_Of_Month
FROM Sales.Orders;

-- ============================================
-- CAST AND CONVERT
-- ============================================

SELECT
    OrderID,
    CreationTime,
    CAST(CreationTime AS DATE) AS Start_Of_Month,
    CONVERT(VARCHAR, CreationTime, 32) AS USA_Style_32,
    CONVERT(VARCHAR, CreationTime, 34) AS EUROPE_Style_34
FROM Sales.Orders;

-- Convert string to int or date
SELECT
    CAST('123' AS INT) AS String_To_Int,
    CAST('2025-04-05' AS DATE) AS String_To_Date,
    CONVERT(INT, '123') AS Convert_String_To_Int,
    CONVERT(DATE, '2026-08-20') AS Convert_String_To_Date;

-- ============================================
-- DATEADD
-- ============================================

SELECT
    OrderID,
    OrderDate,
    DATEADD(YEAR, 2, OrderDate) AS Two_Years_Later,
    DATEADD(MONTH, 3, OrderDate) AS Three_Months_Later,
    DATEADD(DAY, -10, OrderDate) AS Ten_Days_Before
FROM Sales.Orders;

-- ============================================
-- DATEDIFF
-- ============================================

-- Calculate employee age (approximate)
SELECT
    EmployeeID,
    BirthDate,
    DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM Sales.Employees;

-- Days between order and ship
SELECT
    OrderID,
    OrderDate,
    ShipDate,
    DATEDIFF(DAY, OrderDate, ShipDate) AS Days_To_Ship
FROM Sales.Orders;

-- Average days to ship by month
SELECT
    MONTH(OrderDate) AS Order_Month,
    AVG(DATEDIFF(DAY, OrderDate, ShipDate)) AS Avg_Days_To_Ship
FROM Sales.Orders
GROUP BY MONTH(OrderDate);

-- Using LAG() for previous order difference
SELECT
    OrderID,
    OrderDate AS CurrentOrderDate,
    LAG(OrderDate) OVER (ORDER BY OrderDate) AS PreviousOrderDate,
    DATEDIFF(DAY, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) AS Days_Between
FROM Sales.Orders;

-- ============================================
-- ISDATE
-- ============================================

SELECT
    ISDATE('123') AS Test1,
    ISDATE('2025-08-20') AS Test2,
    ISDATE('20-08-2025') AS Test3,
    ISDATE('2025') AS Test4,
    ISDATE('08') AS Test5;

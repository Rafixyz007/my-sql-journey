-- ============================================
-- MULTI-TABLE JOIN (Sales Schema)
-- ============================================

SELECT
    o.orderid,
    o.salespersonid,
    o.sales,
    c.firstname AS customer_first_name,
    c.lastname AS customer_last_name,
    p.product AS product_name,
    p.price,
    e.firstname AS employee_first_name,
    e.lastname AS employee_last_name
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
    ON o.Customerid = c.Customerid
LEFT JOIN Sales.Products AS p
    ON o.Productid = p.Productid
LEFT JOIN Sales.Employees AS e
    ON o.Salespersonid = e.Employeeid;

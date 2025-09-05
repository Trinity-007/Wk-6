-- Q1 firstName, lastName, email, and officeCode of all employees.
SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- Q2 productName, productVendor, and productLine from the products table.
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

--  Q3 orderDate, shippedDate, status, and customerNumber for the first 10 orders.
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
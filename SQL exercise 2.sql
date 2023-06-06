-- Names of all items Northwind sells
SELECT ProductName
FROM products;
-- List product ID, product name, and price
SELECT ProductID, ProductName, UnitPrice
FROM products;
-- Same as before but order by ascending order
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice;
-- Products by price less than 7.50
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;
-- Products with at least 100 units in stock
SELECT ProductName, UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
-- Same as before but add another order by parameter
SELECT ProductName, UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName;
-- Products not in stock
SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0
AND UnitsOnOrder >= 1;
-- Name of table that holds types of items for sale
SELECT CategoryName
FROM categories;
-- All columns and rows in categories table
SELECT * FROM categories;
-- Products table for seafood items
SELECT * FROM products WHERE CategoryID = 8;
-- first and last names of employees
SELECT FirstName, LastName from employees;
-- manager titles in employee table
SELECT * FROM employees WHERE Title like "%Manager%";
-- distinct job titles in employees table
SELECT distinct(Title) from employees;
-- employees with salary between $2000 and 2500
-- SELECT * FROM employees WHERE Salary
-- all info abt suppliers
SELECT * FROM suppliers;
-- items that Tokyo Traders supplies to Northwind
SELECT * FROM products WHERE SupplierID = 4;
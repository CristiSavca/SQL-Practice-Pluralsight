use northwind;
-- product name of most expensive product
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (SELECT MAX(UnitPrice)
FROM products);
-- federal shipping info
select OrderID, ShipName, ShipAddress from orders
where ShipVia = (select ShipperID from shippers where CompanyName = "Federal Shipping");
-- order ids of sasquatch 
select OrderID from `order details`
where ProductID = (select ProductID from products where ProductName = "Sasquatch Ale");
-- name of employee who sold order 10266
select FirstName, LastName from employees
where EmployeeID = (select EmployeeID from orders where OrderID = 10266);
-- name of customer who bought order 10266
select ContactName from customers
where CustomerID = (select CustomerId from orders where OrderID = 10266);
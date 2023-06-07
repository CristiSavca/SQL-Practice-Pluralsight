use northwind;
-- how many suppliers?
select count(SupplierID) from suppliers;
-- sum of salaries
select sum(salary) from employees;
-- cheapest product
select min(UnitPrice) from products;
-- avg price of items
select avg(UnitPrice) from products;
-- most expensive item
select max(UnitPrice) from products;
-- supplierID and num of items they supply
select SupplierID, count(ProductID) from products group by SupplierID;
-- category id and avg price of items in said category
select CategoryID, avg(UnitPrice) from products group by CategoryID;
-- supplier ID w at least 5 items, and # of items they supply
select SupplierID, count(ProductID) from products group by SupplierID having(count(ProductID) >= 5);
-- list productID, productName, inventoryValue sorted in descending order by values
SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM northwind.Products
ORDER BY InventoryValue DESC, ProductName;

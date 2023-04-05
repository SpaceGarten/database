-- C:\xampp\mysql\bin  


-- Select all the rows for ContactName and Contact Title in the Orders Database

SELECT ContactName, ContactTitle
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
)


-- Select all the products that have a UnitPrice between 10.00 and 20.00. List the ProductName, UnitPrice
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice BETWEEN 10.00 AND 20.00;


-- Select all the product details for products that are shipped from Germany, Italy and Norway
SELECT * FROM Products 
WHERE SupplierID IN 
(SELECT SupplierID FROM Suppliers 
WHERE Country IN ('Germany', 'Italy', 'Norway'));


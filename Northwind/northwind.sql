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



-- Select all the shipments for EmployeeID 6, to the USA sort them in ascending order by freightcost.
SELECT * FROM Orders WHERE ShipCountry = 'USA' AND EmployeeID = 6 ORDER BY Freight ASC;


-- What is the total Count of Orders?
SELECT COUNT(*) FROM Orders;

-- Select all the products in the tblProducts table that have the word 'tea'.
SELECT * FROM Products WHERE ProductName LIKE '%tea%';

-- Select all the shipments for EmployeeID 6, to the USA sort them in ascending order by freightcost.
SELECT * FROM Orders WHERE ShipCountry = 'USA' AND EmployeeID = 6 ORDER BY Freight ASC;

-- What is the total Count of Orders?
SELECT COUNT(*) FROM Orders;

-- Get the current Database
SELECT DATABASE();

-- Print out your birthday in the format "I am 25 years old.".
SELECT CONCAT('I am ', YEAR(CURDATE()) - YEAR('1997-01-01'), ' years old.') AS 'Birthday';



-- Select all the orders that were placed in 1997
SELECT * FROM Orders WHERE YEAR(OrderDate) = 1997;

-- Select all the shipping orders that were sent to Canada, Order them in reverse order by the number of days they took to ship.
SELECT * FROM Orders WHERE ShipCountry = 'Canada' ORDER BY DATEDIFF(ShippedDate, OrderDate) DESC;

-- Select the Product Name, UnitPrice, Tax (14%) and Total.
SELECT ProductName, UnitPrice, UnitPrice * 0.14 AS 'Tax', UnitPrice * 1.14 AS 'Total' FROM Products;


--Display the Minimum, Maximum and Average Unit Price in the orders table.
SELECT MIN(UnitPrice), MAX(UnitPrice), AVG(UnitPrice) FROM Products;

--Get the total number of orders between 1991 and 1993
SELECT COUNT(*) FROM Orders WHERE YEAR(OrderDate) BETWEEN 1991 AND 1993;

--List the number of Customers by city in descending order by the most popular city where the city has more than one customer
SELECT COUNT(*) AS 'Count', City FROM Customers GROUP BY City HAVING COUNT(*) > 1 ORDER BY COUNT(*) DESC;

--List the same but only for Cities that have a count greater than 1.
SELECT COUNT(*) AS 'Count', City FROM Customers GROUP BY City HAVING COUNT(*) > 1 ORDER BY COUNT(*) DESC;

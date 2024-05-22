--#1
SELECT 'Order ID:', OrderID, 'Order Date:', OrderDate
FROM Orders

--#2
SELECT LastName AS 'Last Name', FirstName AS 'First Name'
FROM Customers

--#3
SELECT City + ', ' + State + ' ' + ZipCode AS 'FullAddress'
FROM Addresses

--#4
SELECT ProductName, ListPrice, DiscountPercent, ListPrice - (ListPrice * (DiscountPercent / 100)) AS 'DiscountedPrice'
FROM Products

--#5
SELECT ProductName, ListPrice, (ListPrice * 1.1) AS 'PricePlus10Pct'
FROM Products








--#1
SELECT City, State
FROM Addresses
ORDER BY State, City

--#2
SELECT FirstName, LastName
FROM Customers
ORDER BY LastName, FirstName

--#3
SELECT OrderID, ShipAmount, ShipDate
FROM Orders
ORDER BY ShipDate DESC

--#4
SELECT ProductName, Description, DiscountPercent
FROM Products
ORDER BY DiscountPercent

--#5
SELECT ProductName, ListPrice, DiscountPercent, ListPrice * (DiscountPercent / 100) AS 'DiscountDollars'
FROM Products
ORDER BY DiscountDollars DESC












--#1
SELECT 
	FirstName + ' ' + LastName AS 'CustomerFullName'
FROM Customers

--#2
SELECT 
	City, State, SUBSTRING(City,5,3) AS 'SubstringDemo'
FROM Addresses

--#3
SELECT
	ProductName, UPPER(ProductName) AS 'UpperDemo'
FROM Products

--#4
SELECT OrderDate,
	YEAR(OrderDate) AS 'Year',
	MONTH(OrderDate) AS 'Month',
	DAY(OrderDate) AS 'Day'
FROM Orders

--#5
SELECT OrderDate, ShipDate,
	DATEDIFF(day, OrderDate, ShipDate) AS 'FulfillDays'
FROM Orders

--#6
SELECT ItemPrice,
	ROUND(ItemPrice, 1) AS 'OneDecimal',
	ROUND(ItemPrice, 0) AS 'NoDecimal',
	ROUND(ItemPrice, -2) AS 'TwoToTheLeft'
FROM OrderItems

--#7
SELECT CardNumber, CardExpires,
	SUBSTRING(CardExpires,4,4) AS 'CardExpireYear'
FROM Orders
















-- #1
SELECT FirstName, LastName
FROM Customers
WHERE FirstName LIKE '%ar%'

-- #2
SELECT FirstName, LastName
FROM Customers
WHERE FirstName LIKE '%erin%'

-- #3
SELECT ProductName, Description
FROM Products
WHERE Description LIKE '%bass%'

-- #4
SELECT ProductName, Description
FROM Products
WHERE Description LIKE '%drum%'

-- #5
SELECT ProductName, Description
FROM Products
WHERE ProductName LIKE '%gibson%'

-- #6
SELECT FirstName, LastName
FROM Customers
WHERE LastName < 'z%'

-- #7
SELECT OrderID, CustomerID, ShipAmount
FROM Orders
WHERE ShipAmount > '5'
ORDER BY ShipAmount DESC












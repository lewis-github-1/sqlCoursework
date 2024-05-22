-- #1
SELECT *
FROM Products
WHERE CategoryID = 2 AND ProductCode = 'hofner'

-- #2
SELECT *
FROM Products
WHERE CategoryID = 2 OR CategoryID = 3
ORDER BY ProductID

-- #3
SELECT *
FROM Products
WHERE NOT (CategoryID = 2 OR CategoryID = 3)
ORDER BY ProductID

-- #4
SELECT *
FROM OrderItems
WHERE ProductID BETWEEN 1 AND 5
ORDER BY ProductID

-- #5
SELECT *
FROM OrderItems
WHERE ProductID IN (2, 4, 6)
ORDER BY ProductID

-- #6
SELECT *
FROM OrderItems
WHERE ProductID NOT IN (2, 4, 6)
ORDER BY ProductID

-- #7
SELECT OrderID, ShipDate, ISNULL(ShipDate, OrderDate + 14) AS 'ExpectedShipDate'
FROM Orders
ORDER BY OrderID



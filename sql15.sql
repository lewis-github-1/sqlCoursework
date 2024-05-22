-- #1
SELECT City, State
FROM Addresses
GROUP BY City, State
ORDER BY City

-- #2
SELECT COUNT(*) AS 'CountAllRecords'
FROM OrderItems

-- #3
SELECT MIN(OrderDate) AS 'OldestOrder'
FROM Orders

-- #4
SELECT MAX(ListPrice) AS 'HighestPrice'
FROM Products

-- #5
SELECT AVG(ListPrice) AS 'AvgPrice'
FROM Products

-- #6
SELECT
	AVG(ListPrice) AS 'AvgPrice',
	MIN(ListPrice) AS 'LowPrice',
	MAX(ListPrice) AS 'HighPrice'
FROM Products

-- #7
SELECT OrderID, SUM(ItemPrice) AS 'Total'
FROM OrderItems
WHERE OrderID = 7
GROUP BY OrderID

-- #8
SELECT CustomerID, SUM(ShipAmount) AS 'TotalShip'
FROM Orders
GROUP BY CustomerID

-- #9
SELECT CustomerID, SUM(ShipAmount) AS 'TotalShip'
FROM Orders
GROUP BY CustomerID
HAVING SUM(ShipAmount) >= 10

-- #10
SELECT OrderID, (SUM(ItemPrice) - SUM(DiscountAmount)) AS 'FinalPrice'
FROM OrderItems
GROUP BY OrderID

-- #11
SELECT CustomerID, (SUM(ShipAmount) + SUM(TaxAmount)) AS 'ExtraCharges'
FROM Orders
GROUP BY CustomerID

-- #12
SELECT CustomerID, (SUM(ShipAmount) + SUM(TaxAmount)) AS 'ExtraCharges'
FROM Orders
GROUP BY CustomerID
HAVING (SUM(ShipAmount) + SUM(TaxAmount)) > 100

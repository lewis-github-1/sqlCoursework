-- #1
SELECT OrderID, ItemPrice
FROM OrderItems
WHERE ItemPrice >= (SELECT AVG(ItemPrice) FROM OrderItems) 


-- #2
SELECT CustomerID, FirstName, LastName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders WHERE CardType = 'Visa')

-- #3
SELECT DISTINCT c.CustomerID, FirstName, LastName
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE CardType = 'Visa'



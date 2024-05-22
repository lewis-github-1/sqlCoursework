-- #1
SELECT c.CustomerID, FirstName, LastName, Line1, Line2,
	City, State, ZipCode, Phone
FROM Customers c
JOIN Addresses a
ON c.ShippingAddressID = a.AddressID

-- #2
SELECT CategoryName, ProductName, ListPrice, DiscountPercent
FROM Categories c
JOIN Products p
ON c.CategoryID = p.CategoryID

-- #3
SELECT c.CustomerID, FirstName, LastName, OrderID,
	OrderDate, ShipAmount, TaxAmount
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
ORDER BY CustomerID, OrderDate

-- #4
SELECT c.CustomerID, FirstName, LastName, OrderID, OrderDate
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
ORDER BY CustomerID, OrderDate

-- #5
SELECT c.CustomerID, FirstName, LastName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE OrderID IS NULL

-- #6
SELECT c.CustomerID, FirstName, LastName, o.OrderID, ItemID,
	OrderDate, ItemPrice, DiscountAmount, Quantity
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON oi.OrderID = o.OrderID
ORDER BY CustomerID, OrderDate

-- #7
SELECT c.CustomerID, FirstName, LastName, o.OrderID, ItemID,
	ItemPrice, DiscountAmount, Quantity, ProductName
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON oi.OrderID = o.OrderID
JOIN Products p ON p.ProductID = oi.ProductID
ORDER BY CustomerID, OrderDate

-- #8
SELECT c.CustomerID, FirstName, LastName, o.OrderID, ItemID,
	ItemPrice, DiscountAmount, Quantity, ProductName, CategoryName
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON oi.OrderID = o.OrderID
JOIN Products p ON p.ProductID = oi.ProductID
JOIN Categories cat ON cat.CategoryID = p.CategoryID
ORDER BY CustomerID, OrderDate

-- #9
SELECT ProductCode, ProductName, Description, o.OrderID
FROM Products p
LEFT JOIN OrderItems oi ON p.ProductID = oi.ProductID
LEFT JOIN Orders o ON o.OrderID = oi.OrderID
WHERE o.OrderID IS NULL

-- #10
SELECT CategoryName
FROM Categories c
LEFT JOIN Products p ON p.CategoryID = c.CategoryID
WHERE ProductID IS NULL

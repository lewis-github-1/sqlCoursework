-- #1
CREATE PROCEDURE spOrderInfo
AS
BEGIN
SELECT FirstName, LastName, oi.OrderID, OrderDate, ProductName, Quantity,
ItemPrice, DiscountAmount, Quantity * (ItemPrice - DiscountAmount) AS 'ExtendedTotal'
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
END

-- #2
EXEC spOrderInfo

-- #3
ALTER PROCEDURE spOrderInfo (@OrderID int)
AS
BEGIN
SELECT FirstName, LastName, oi.OrderID, OrderDate, ProductName, Quantity,
ItemPrice, DiscountAmount, Quantity * (ItemPrice - DiscountAmount) AS 'ExtendedTotal'
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
WHERE o.OrderID = @OrderID
END

-- #4
EXEC spOrderInfo @OrderID = 7



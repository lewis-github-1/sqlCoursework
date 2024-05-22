-- #1
SELECT ProductName, CategoryID,
CASE CategoryID
	WHEN 1 THEN 'Guitar'
	WHEN 2 THEN 'Bass'
	WHEN 3 THEN 'Drum'
END AS 'CategoryName'
FROM Products

-- #2
SELECT OrderID, ShipDate,
CASE
	WHEN ShipDate IS NULL THEN 'Not Shipped'
	ELSE 'Shipped'
END AS 'ShipStatus'
FROM Orders

-- #3
SELECT FirstName, LastName, ShippingAddressID, BillingAddressID,
CASE
	WHEN ShippingAddressID = BillingAddressID THEN 'Same'
	ELSE 'Different'
END AS 'ShipSameAsBill'
FROM Customers

-- #4
SELECT ItemID, ItemPrice, DiscountAmount,
CASE 
	WHEN DiscountAmount / ItemPrice >= .1 THEN '10% or More'
	ELSE 'Less than 10%'
END AS 'DiscountSize'
FROM OrderItems

-- #5
SELECT City, State,
CASE
	WHEN State = 'NJ' THEN 'New Jersey'
	WHEN State = 'NE' THEN 'Nebraska'
	WHEN State = 'OR' THEN 'Oregon'
	WHEN State = 'CA' THEN 'California'
	WHEN State = 'CO' THEN 'Colorado'
	WHEN State = 'NY' THEN 'New York'
END AS 'FullState'
FROM Addresses



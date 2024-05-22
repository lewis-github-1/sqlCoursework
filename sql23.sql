-- #1
INSERT INTO Products
(CategoryID, ProductCode, ProductName, Description, ListPrice,
	DiscountPercent, DateAdded)
VALUES
(1, 'strat2', 'Fender Jazzmaster', 'The Fender guitar for jazz enthusiasts',
599.00, 25.00, '2022-12-10'),
(2, 'gammon', 'Gammon Full Size Drum Set', 'Gammon full size drum set with 
	everything included', 260.00, 30.00, '2022-12-10'),
(3, 'rockjam', 'Rock Jam Keyboard', 'Rockjam 61-key electronic keyboard', 
	119.00, 25.00, '2022-12-10')


-- #2
UPDATE Products
SET ListPrice = 275.00
WHERE ProductCode = 'gammon'

-- #3
DELETE FROM Products
WHERE ProductCode = 'strat2'



SELECT *
FROM Products


-- #1
CREATE PROCEDURE spVendors
AS
BEGIN
SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorState = 'CA'
END

-- #2
EXECUTE spVendors

-- #3
ALTER PROCEDURE spVendors
(@VendorState varchar(3))
AS
BEGIN
SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorState = @VendorState
END

-- #4
EXECUTE spVendors 'MI'



















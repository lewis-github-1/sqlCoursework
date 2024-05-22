-- #1
INSERT INTO Vendors
(VendorName, VendorAddress1, VendorCity, VendorState, VendorZipCode,
	VendorPhone, VendorContactLName, VendorContactFName, DefaultTermsID, DefaultAccountNo)
VALUES
('Walmart', '4101 N. Vermilion', 'Danville', 'IL', '61832', '(217)443-9520', 'Doe', 'John', 1, 523),
('Meijer', '3649 N. Vermilion', 'Danville', 'IL', '61832', '(217)655-7200', 'Meijer', 'Sam', 2, 520),
('Lowes Home Improvement', '3636 N. Vermilion', 'Danville', 'IL', '61832', '(217)442-5200', 'Taylor', 'Tim', 3, 589)

-- #2
UPDATE Vendors
SET DefaultTermsID = 3
WHERE VendorName = 'Walmart'

-- #3
DELETE FROM Vendors
WHERE VendorName = 'Meijer'


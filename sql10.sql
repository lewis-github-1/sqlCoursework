-- #1
SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorState = 'CA'

-- #2
SELECT VendorName
FROM Vendors
WHERE VendorName LIKE 'Th%'


-- #3
SELECT VendorName 
From Vendors
WHERE VendorName LIKE '%mail%'

-- #4
SELECT InvoiceNumber, InvoiceTotal,
	InvoiceTotal - PaymentTotal - CreditTotal AS 'Balance Due'
FROM Invoices 
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0
ORDER BY 'Balance Due' DESC



























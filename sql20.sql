-- #1
SELECT VendorName, InvoiceNumber, InvoiceTotal
FROM Vendors v
JOIN Invoices i
ON v.VendorID = i.VendorID
WHERE InvoiceTotal >= (SELECT AVG(InvoiceTotal) FROM Invoices)

-- #2
SELECT InvoiceNumber, InvoiceTotal
FROM Invoices 
WHERE VendorID IN (SELECT VendorID FROM Vendors WHERE VendorState = 'CA')


-- #3
SELECT InvoiceNumber, InvoiceTotal
FROM Invoices i
JOIN Vendors v ON i.VendorID = v.VendorID
WHERE v.VendorState = 'CA'


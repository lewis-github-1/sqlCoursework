-- #1
SELECT VendorCity, VendorState
FROM Vendors
GROUP BY VendorCity, VendorState
ORDER BY VendorState, VendorCity
-- #2
SELECT COUNT(*) CountAllRecords
FROM Invoices

-- #3
SELECT MIN(InvoiceDate) AS OldestInvoice
FROM Invoices


-- #4
SELECT MAX(InvoiceLineItemAmount) AS HighestLine
FROM InvoiceLineItems


-- #5
SELECT AVG(InvoiceTotal) AS AvgInvoice, 
	MIN(InvoiceTotal) AS MinInvoice, 
	MAX(InvoiceTotal) AS MaxInvoice
FROM Invoices

-- #6
SELECT InvoiceID, SUM(InvoiceLineItemAmount) AS Total
FROM InvoiceLineItems
WHERE InvoiceID = 12
GROUP BY InvoiceID

-- #7
SELECT VendorID,
SUM(InvoiceTotal) AS VendorTotal
FROM Invoices
GROUP BY VendorID

-- #8
SELECT VendorID,
SUM(InvoiceTotal) AS VendorTotal
FROM Invoices
GROUP BY VendorID
HAVING SUM(InvoiceTotal) > 1000
ORDER BY VendorTotal








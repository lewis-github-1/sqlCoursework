-- #1
SELECT VendorID, VendorName, TermsDescription
FROM Vendors
JOIN Terms ON Vendors.DefaultTermsID = Terms.TermsID
ORDER BY VendorID

-- #2
SELECT i.InvoiceID, InvoiceNumber, InvoiceSequence, InvoiceLineItemDescription, InvoiceLineItemAmount
FROM Invoices i
JOIN InvoiceLineItems ili ON i.InvoiceID = ili.InvoiceID
ORDER BY InvoiceID

-- #3
SELECT VendorName, InvoiceNumber, InvoiceTotal
FROM Vendors v
JOIN Invoices i ON v.VendorID = i.VendorID

-- #4
SELECT VendorName, InvoiceNumber, InvoiceTotal
FROM Vendors v
LEFT JOIN Invoices i ON v.VendorID = i.VendorID

-- #5
SELECT v.VendorID, VendorName, VendorCity
FROM Vendors v
JOIN Invoices i ON v.VendorID = i.VendorID
WHERE InvoiceNumber IS NULL

-- #6
SELECT v.vendorID, VendorName, InvoiceNumber, InvoiceTotal,
	InvoiceLineItemAmount, InvoiceLineItemDescription
FROM Vendors v
JOIN Invoices i ON v.VendorID = i.VendorID
JOIN InvoiceLineItems ili ON i.InvoiceID = ili.InvoiceID
ORDER BY VendorID

-- #7
SELECT v.vendorID, VendorName, InvoiceNumber, InvoiceTotal,
	InvoiceLineItemAmount, InvoiceLineItemDescription, AccountDescription
FROM Vendors v
JOIN Invoices i ON v.VendorID = i.VendorID
JOIN InvoiceLineItems ili ON i.InvoiceID = ili.InvoiceID
JOIN GLAccounts gl ON ili.AccountNo = gl.AccountNo
ORDER BY VendorID


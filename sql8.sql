SELECT *
FROM Vendors
--#1
SELECT VendorState, VendorCity
FROM Vendors
ORDER BY VendorState, VendorCity

--#2
SELECT FirstName, LastName
FROM ContactUpdates
ORDER BY LastName, FirstName

--#3
SELECT InvoiceID, InvoiceTotal, InvoiceDate
FROM Invoices
ORDER BY InvoiceDate DESC, InvoiceTotal

--#4
SELECT InvoiceLineItemDescription, AccountNo, InvoiceLineItemAmount
FROM InvoiceLineItems
ORDER BY AccountNo, InvoiceLineItemAmount

--#5
SELECT InvoiceNumber, InvoiceTotal, InvoiceDate, PaymentDate,
	DATEDIFF(d, InvoiceDate, PaymentDate) AS 'Days'
FROM Invoices
ORDER BY Days DESC, InvoiceTotal














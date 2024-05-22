--INFO285 CH 3 Practice
--#1
SELECT 'Invoice Number:', InvoiceNumber, 'Invoice Date:', InvoiceDate
FROM Invoices

--#2
SELECT InvoiceNumber AS 'Inv Number', InvoiceDate AS 'Inv Date'
FROM Invoices

--#3
SELECT VendorName AS 'Vendor Name',
	VendorCity + ', ' + VendorState + ' ' + VendorZipCode AS 'Address'
FROM Vendors

--#4
SELECT InvoiceNumber,
	InvoiceTotal - CreditTotal - PaymentTotal AS 'BalanceDue'
FROM Invoices

--#5
SELECT InvoiceNumber, InvoiceTotal,
	InvoiceTotal * .0875 AS 'SalesTax',
	InvoiceTotal * 1.0875 AS 'TotalWithTax'
FROM Invoices














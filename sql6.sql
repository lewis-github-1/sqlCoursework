--#1
SELECT LEFT(VendorContactFName,1) + ', ' + VendorContactLName AS VendorContactName
FROM Vendors

--#2
SELECT AccountDescription,
	SUBSTRING(AccountDescription,3,4) AS SubstringDemo
FROM GLAccounts

--#3
SELECT AccountDescription,
	UPPER(AccountDescription) AS UpperDemo
From GLAccounts

--#4
SELECT InvoiceDate,
	YEAR(InvoiceDate) AS Year,
	MONTH(InvoiceDate) AS Month,
	DAY(InvoiceDate) AS Day
FROM Invoices

--#5
SELECT InvoiceDate, InvoiceDueDate,
	DATEDIFF(day, InvoiceDate, InvoiceDueDate) AS 'DaysBetween'
FROM Invoices

--#6
SELECT InvoiceTotal,
	ROUND(InvoiceTotal, 1) AS OneDecimal,
	ROUND(InvoiceTotal, 0) AS NoDecimal,
	Round(InvoiceTotal, -1) AS OneToTheLeft
FROM Invoices

--#7
SELECT VendorName, VendorAddress2,
	ISNULL(VendorAddress2, 'No second address') AS 'ExampleOfIsNull'
FROM Vendors






































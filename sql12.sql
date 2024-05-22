-- #1
SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorCity = 'Fresno' AND VendorState = 'CA'

-- #2
SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorCity = 'Fresno' OR VendorCity = 'Sacramento'

-- #3
SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorCity IN ('Fresno', 'Sacramento')

-- #4
SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorState NOT IN ('WI', 'DC')

-- #5
SELECT VendorID, InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE VendorID IN (121, 89, 96)
ORDER BY VendorID

-- #6
SELECT VendorID, InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE InvoiceDate BETWEEN '2011-12-01' AND '2011-12-31'
ORDER BY InvoiceDate

-- #7
SELECT VendorName, VendorPhone, ISNULL(VendorPhone, 'Missing') AS VendorPhone2
FROM Vendors





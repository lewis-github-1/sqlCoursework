-- #1
SELECT VendorName, DefaultTermsID,
CASE DefaultTermsID
	WHEN 1 THEN '10 Days'
	WHEN 2 THEN '20 Days'
	WHEN 3 THEN '30 Days'
	WHEN 4 THEN '60 Days'
	WHEN 5 THEN '90 Days'
END AS 'DaysToPay'
FROM Vendors


-- #2
SELECT VendorName, VendorAddress1,
CASE 
	WHEN VendorAddress2 IS NULL THEN 'NA'
	ELSE
		VendorAddress2
END AS 'VendorAddress2'
FROM Vendors


















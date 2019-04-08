
-- Which sales agent made the most in sales in 2009?

SELECT e.FirstName + ' ' + e.LastName AS 'Full Name', e.Title, CONCAT('', FORMAT(SUM(i.Total), 'C', 'en-us')) AS 'Total Sales for 2009'
  FROM Employee e
	   LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
	   LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
 WHERE Title = 'Sales Support Agent' AND i.InvoiceDate >= '2009-01-01 00:00:00.001' AND i.InvoiceDate < '2009-12-31 12:59:59.999'
 GROUP BY e.FirstName, e.LastName, e.Title;


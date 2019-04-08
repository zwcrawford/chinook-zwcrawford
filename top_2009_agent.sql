
-- Which sales agent made the most in sales in 2009?

SELECT TOP 1 e.FirstName + ' ' + e.LastName AS 'Full Name', e.Title, SUM(i.Total) AS 'Total Sales'
  FROM Employee e
	   LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
	   LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
 WHERE Title = 'Sales Support Agent' AND i.InvoiceDate >= '2009-01-01 00:00:00.001' AND i.InvoiceDate < '2009-12-31 12:59:59.999'
 GROUP BY e.FirstName, e.LastName, e.Title;


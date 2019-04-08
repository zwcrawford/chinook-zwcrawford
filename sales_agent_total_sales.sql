-- Provide a query that shows total sales made by each sales agent.

SELECT DISTINCT(e.FirstName + ' ' + e.LastName) AS 'Full Name', e.Title, SUM(i.Total) AS 'Total Sales'
  FROM Employee e
	   LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
	   LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
 WHERE Title = 'Sales Support Agent'
 GROUP BY e.FirstName, e.LastName, e.Title;

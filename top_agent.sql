
-- Which sales agent made the most in sales over all?

SELECT e.FirstName + ' ' + e.LastName AS 'Full Name', e.Title, CONCAT('', FORMAT(SUM(i.Total), 'C', 'en-us')) AS 'Total Sales'
  FROM Employee e
	   LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
	   LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
 WHERE Title = 'Sales Support Agent' 
 GROUP BY e.FirstName, e.LastName, e.Title
 ORDER BY 'Total Sales' DESC;


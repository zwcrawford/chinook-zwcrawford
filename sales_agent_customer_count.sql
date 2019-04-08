
--  Provide a query that shows the count of customers assigned to each sales agent.

SELECT DISTINCT e.FirstName + ' ' + e.LastName AS 'Agent Name', COUNT(c.CustomerId) AS '# of Customers'
  FROM Employee e
	   LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
 WHERE Title = 'Sales Support Agent'
 GROUP BY e.FirstName, e.LastName	



SELECT e.FirstName + ' ' + e.LastName AS FullName, e.Title, FORMAT(e.HireDate, 'dd/MM/yyyy') AS HireDate
  FROM Employee e
 WHERE Title = 'Sales Support Agent';



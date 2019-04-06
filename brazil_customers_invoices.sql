SELECT c.FirstName + ' ' + c.LastName AS FullName, i.InvoiceId, FORMAT(i.InvoiceDate, 'dd/MM/yyyy') AS InvoiceDate, 
	   i.BillingCountry
  FROM Customer c LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
 WHERE Country = 'Brazil';



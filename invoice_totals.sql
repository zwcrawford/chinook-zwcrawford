-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name 
-- for all invoices and customers.
  SELECT FORMAT(i.Total, 'C', 'en-us') AS 'Customer Invoice Totals', c.FirstName + ' ' + c.LastName AS 'Full Name', i.BillingCountry AS 'Billing Country', c.SupportRepId AS 'Customer Support Rep Id'
    FROM Invoice i INNER JOIN Customer c ON i.CustomerId = c.CustomerId
	ORDER BY i.Total;




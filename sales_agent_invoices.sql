-- Provide a query that shows the invoices associated with each sales agent. The resultant table should 
-- include the Sales Agent's full name.
  SELECT i.BillingCountry 
    FROM Invoice i LEFT JOIN Customers c ON i.InvoiceId = c.InvoiceId
GROUP BY i.BillingCountry;



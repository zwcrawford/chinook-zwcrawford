
-- Provide a query that shows all Invoices but includes the # of invoice line items. 
 

 SELECT i.InvoiceId AS 'Invoice Id', COUNT(DISTINCT il.InvoiceLineId) AS 'Total Line Items'
  FROM Invoice i LEFT JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
  GROUP BY i.InvoiceId
  ORDER BY i.InvoiceId;



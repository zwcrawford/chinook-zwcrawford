
-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37. 
SELECT COUNT(il.InvoiceId) AS 'InvoiceId 37 Count'
  FROM InvoiceLine il
 WHERE InvoiceId = 37;

SELECT *
 FROM InvoiceLine
 WHERE InvoiceId = 37;




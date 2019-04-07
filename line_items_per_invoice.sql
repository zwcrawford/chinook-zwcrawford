
-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. 
-- HINT: GROUP BY 
   SELECT COUNT(il.InvoiceLineId) AS 'Line Item Count', i.InvoiceId
     FROM InvoiceLine il INNER JOIN Invoice i ON i.InvoiceId = il.InvoiceId
 GROUP BY i.InvoiceId;

 -- Verifying counts by id are correct.
 SELECT *
 From InvoiceLine
 WHERE InvoiceId = 1
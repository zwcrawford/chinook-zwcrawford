
-- Provide a query that shows the # of invoices per country. HINT: GROUP BY   
 
  SELECT DISTINCT i.BillingCountry AS 'Billing Country', COUNT(il.InvoiceLineId) AS 'Invoice Count'
    FROM InvoiceLine il LEFT JOIN Track t ON il.TrackId = t.TrackId
		 LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY i.BillingCountry
ORDER BY i.BillingCountry;

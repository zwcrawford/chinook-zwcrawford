
-- Provide a query that includes the purchased track name with each invoice line item.  
 
  SELECT il.InvoiceLineId AS 'Invoice Line Id', t.TrackId AS 'Track Id', t.[Name] AS 'Track          Name'
    FROM InvoiceLine il INNER JOIN Track t ON il.TrackId = t.TrackId
ORDER BY InvoiceLineId ASC;
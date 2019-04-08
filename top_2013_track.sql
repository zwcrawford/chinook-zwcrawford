
-- Provide a query that shows the most purchased track of 2013.

SELECT  TOP 1 t.Name AS 'Track Name', COUNT(CASE WHEN t.TrackId = il.TrackId AND i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31' THEN 1 ELSE 0 END) AS 'Total Orders'
  FROM Track t
	   LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
	   LEFT JOIN Invoice i ON il.InvoiceId = i.InvoiceId
 GROUP BY t.Name
 ORDER BY 'Total Orders' DESC;


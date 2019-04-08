
-- Provide a query that shows the top 5 most purchased songs.

SELECT  TOP 5 t.Name AS 'Track Name', COUNT(CASE WHEN t.TrackId = il.TrackId THEN 1 ELSE 0 END) AS 'Total Orders'
  FROM Track t
	   LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
 GROUP BY il.TrackId, t.Name
 ORDER BY 'Total Orders' DESC;


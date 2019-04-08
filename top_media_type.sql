
-- Provide a query that shows the most purchased Media Type.

SELECT  TOP 1 m.Name AS 'Artist Name', COUNT(CASE WHEN t.TrackId = il.TrackId THEN 1 ELSE 0 END) AS 'Total Orders'
  FROM Track t
	   LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
	   LEFT JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
 GROUP BY il.TrackId, m.Name
 ORDER BY 'Total Orders' DESC;
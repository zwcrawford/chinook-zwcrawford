
-- Provide a query that shows the top 3 best selling artists.

SELECT  TOP 3 ar.Name AS 'Artist Name', COUNT(CASE WHEN t.TrackId = il.TrackId THEN 1 ELSE 0 END) AS 'Total Orders'
  FROM Track t
	   LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
	   LEFT JOIN Album al ON t.AlbumId = al.AlbumId
	   LEFT JOIN Artist ar ON al.ArtistId = ar.ArtistId
 GROUP BY il.TrackId, ar.Name
 ORDER BY 'Total Orders' DESC;
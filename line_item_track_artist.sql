
-- Provide a query that includes the purchased track name AND artist name with each 
-- invoice line item.  
 
  SELECT il.InvoiceLineId AS 'Invoice Line Id', t.TrackId AS 'Track Id', t.[Name] AS 'Track Name', ar.[Name]
    FROM InvoiceLine il LEFT JOIN Track t ON il.TrackId = t.TrackId
		 LEFT JOIN Album al ON al.AlbumId = t.AlbumId
		 LEFT JOIN Artist ar ON ar.ArtistId = al.ArtistId
ORDER BY InvoiceLineId ASC;
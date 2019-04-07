
-- Provide a query that shows all the Tracks, but displays no IDs. The result should include 
-- the Album name, Media type and Genre.  

 SELECT t.Name AS 'Track Name', al.Title AS 'Album Name', m.Name AS 'Media Type', g.Name AS 'Genre Name'
    FROM Track t LEFT JOIN Album al ON al.AlbumId = t.AlbumId
				 LEFT JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
				 LEFT JOIN Genre g ON g.GenreId = t.GenreId
				 ORDER BY [Album Name], [Track Name];

-- Provide a query that shows the total number of tracks in each playlist. The Playlist 
-- name should be include on the resulant table.   

  SELECT p.PlaylistId, p.[Name] AS 'Playlist Name', COUNT(t.TrackId) AS 'Track Count'
    FROM Playlist p LEFT JOIN PlaylistTrack pl ON p.PlaylistId = pl.PlaylistId
					LEFT JOIN Track t ON t.TrackId = pl.TrackId
GROUP BY p.PlaylistId, p.[Name]
ORDER BY p.PlaylistId;

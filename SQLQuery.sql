/*   Query 1    */
SELECT art.Name ,count(*) as Artist_sales
FROM InvoiceLine as i
JOIN track as t on t.TrackId = i.TrackId
JOIN album as a on a.AlbumId = t.AlbumId
JOIN artist as art on art.ArtistId = a.ArtistId 
GROUP by art.ArtistId
ORDER by 2 desc 
LIMIT 5;

/*   Query 2    */
 SELECT t1.FirstName,SUM(t2.total) sum
 FROM Customer t1
 JOIN Invoice t2 ON t1.CustomerId = t2.CustomerId
 GROUP BY t1.CustomerId
 ORDER BY sum DESC
 LIMIT 5;

/*   Query 3    */
SELECT g.Name,COUNT(*) tracks_Count
FROM genre g 
JOIN track t ON g.GenreId = t.GenreId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY  g.Name
ORDER By tracks_Count DESC
LIMIT 9;


/*   Query 4    */
 SELECT t4.Name,COUNT(t1.Name) Count
 FROM Track t1
 JOIN Genre t2 ON t1.GenreId = t2.GenreId
 JOIN Album t3 ON t3.AlbumId = t1.AlbumId
 JOIN Artist t4 ON t4.ArtistId = t3.ArtistId
 WHERE t2.Name = 'Rock'
 GROUP BY t4.Name
 ORDER BY Count DESC
 LIMIT 5;
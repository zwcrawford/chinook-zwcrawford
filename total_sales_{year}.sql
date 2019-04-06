
--  What are the respective total sales for 2009? 
SELECT CONCAT('', FORMAT(SUM(i.Total), 'C', 'en-us'))  AS 'Invoice Total  for 2011'
FROM Invoice i
WHERE i.InvoiceDate >= '2009-01-01 00:00:00.001' AND i.InvoiceDate < '2009-12-31 12:59:59.999';

--  What are the respective total sales for 2011? 
SELECT CONCAT('', FORMAT(SUM(i.Total), 'C', 'en-us'))  AS 'Invoice Total  for 2011'
  FROM Invoice i
 WHERE i.InvoiceDate >= '2011-01-01 00:00:00.001' AND i.InvoiceDate < '2011-12-31 12:59:59.999';





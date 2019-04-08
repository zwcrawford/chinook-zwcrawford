
-- Which country's customers spent the most?

SELECT  TOP(1)i.BillingCountry, CONCAT('', FORMAT(SUM(i.Total), 'C', 'en-us')) AS 'Total Sales'
  FROM Invoice i
 GROUP BY i.BillingCountry
 ORDER BY i.BillingCountry DESC;
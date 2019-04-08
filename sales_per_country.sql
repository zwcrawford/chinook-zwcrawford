
-- Provide a query that shows the total sales per country.

 SELECT i.BillingCountry AS 'Billing Country', CONCAT('', FORMAT(SUM(i.Total), 'C', 'en-us')) AS 'Total Sales'
   FROM Invoice i
   GROUP BY i.BillingCountry
   ORDER BY i.BillingCountry;

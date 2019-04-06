
-- How many Invoices were there in 2009? 
SELECT i.Total AS 'Invoice Total', i.InvoiceDate
  FROM Invoice i
 WHERE i.InvoiceDate >= '2009-01-01 00:00:00.001' AND i.InvoiceDate < '2009-12-31 12:59:59.999';

-- How many Invoices were there in 2011? 
SELECT i.Total AS 'Invoice Total', i.InvoiceDate
FROM Invoice i
WHERE i.InvoiceDate >= '2011-01-01 00:00:00.001' AND i.InvoiceDate < '2011-12-31 12:59:59.999';





-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.
  SELECT i.BillingCountry 
    FROM Invoice i
GROUP BY i.BillingCountry;



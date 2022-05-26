SELECT 
    i.billingcountry,
COUNT(i.invoiceid)
FROM invoice i
GROUP BY i.billingcountry
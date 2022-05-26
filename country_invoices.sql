SELECT 
    i.billingcountry,
COUNT(*)
FROM invoice i
GROUP BY i.billingcountry
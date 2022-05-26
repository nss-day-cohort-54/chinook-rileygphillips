SELECT i.invoiceid, COUNT(*)
FROM invoiceline i
GROUP BY i.invoiceid
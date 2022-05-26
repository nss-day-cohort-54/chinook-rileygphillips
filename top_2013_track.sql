WITH track_count AS (
SELECT COUNT(il.invoicelineId) AS track_sales,
    il.trackid,
    t.name
FROM invoiceline il
JOIN track t 
    ON il.trackid = t.trackid
JOIN invoice i
    ON il.invoiceid = i.invoiceid
WHERE i.invoicedate LIKE '2013%'
GROUP BY t.name
ORDER BY track_sales DESC
)

SELECT name FROM track_count WHERE track_sales = (
SELECT MAX(track_sales) FROM track_count
)
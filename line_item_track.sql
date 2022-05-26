SELECT 
    i.invoicelineid,
    i.invoiceid,
    i.trackid,
    i.unitprice,
    i.quantity,
    t.name track_name
FROM invoiceline i
JOIN track t
    ON i.trackid = t.trackid
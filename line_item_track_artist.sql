SELECT 
    i.invoicelineid,
    i.invoiceid,
    i.trackid,
    i.unitprice,
    i.quantity,
    t.name track_name,
    ar.name artist_name
FROM invoiceline i
JOIN track t
    ON i.trackid = t.trackid
JOIN album al
    ON t.albumid = al.albumid
JOIN artist ar
    ON al.artistid = ar.artistid
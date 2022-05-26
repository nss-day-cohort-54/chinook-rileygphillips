SELECT 
    e.firstName, 
    e.lastName, 
    i.invoiceid
FROM employee e
JOIN customer c
    ON e.employeeid = c.supportrepid
JOIN invoice i 
    ON c.customerid = i.customerid
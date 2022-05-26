SELECT 
    i.total,
    c.firstName customer_fn, 
    c.lastName customer_ln, 
    c.country,
    i.invoiceid,
    e.firstName employee_fn, 
    e.lastName employee_ln
FROM invoice i
JOIN customer c
    ON i.customerid = c.customerid
JOIN employee e
    ON c.supportrepid = e.employeeid
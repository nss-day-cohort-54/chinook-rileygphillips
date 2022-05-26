SELECT 
    e.firstname,
    e.lastname,
COUNT(c.customerid)
FROM employee e
LEFT JOIN customer c 
    ON c.supportrepid = e.employeeid
GROUP BY e.employeeid
WITH top_earners AS (
SELECT SUM(i.total) AS total,
    e.firstName, 
    e.lastName
FROM invoice i
JOIN customer c
    ON i.customerid = c.customerid
JOIN employee e
    ON c.supportrepid = e.employeeid
GROUP BY e.employeeid
)

SELECT 
    firstName, 
    lastName
FROM top_earners
WHERE total = (SELECT MAX(total) FROM top_earners)
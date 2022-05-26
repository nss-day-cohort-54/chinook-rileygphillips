SELECT 
    p.name,
COUNT(*)
FROM playlisttrack pt
JOIN playlist p 
    ON pt.playlistid = p.playlistid
GROUP BY pt.playlistid
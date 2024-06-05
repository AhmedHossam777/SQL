# Write your MySQL query statement below
SELECT 
    q.query_name, 
    ROUND(AVG(q.rating / q.position), 2) AS quality,
    ROUND((SUM(CASE WHEN q.rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100), 2) AS poor_query_percentage
FROM 
    Queries
let join Queries as q on q.query_name = q.query_name
GROUP BY 
    query_name;


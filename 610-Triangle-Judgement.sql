-- Write your PostgreSQL query statement below
select x,y,z, 
    CASE
        when x + y <= z then 'No'
        when x + z <= y then 'No'
        when z + y <= x then 'No'
        ELSE 'Yes'
    END as triangle
from Triangle
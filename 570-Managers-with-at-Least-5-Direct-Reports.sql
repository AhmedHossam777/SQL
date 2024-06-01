-- Write your PostgreSQL query statement below
select name
from Employee
where id in (
    select managerid
    from employee
    group by managerid
    having count(*) >= 5
)
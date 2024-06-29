-- Write your PostgreSQL query statement below
with em as (
    select employee_id,count(employee_id)
    from Employee
    group by employee_id
)

select e.employee_id, e.department_id
from Employee as e
join em on em.employee_id = e.employee_id
where (
    e.primary_flag = 'Y' OR em.count = 1
)
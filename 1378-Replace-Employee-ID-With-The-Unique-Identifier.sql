# Write your MySQL query statement below
select name, unique_id
from Employees
left join EmployeeUNI on EmployeeUNI.id = Employees.id
order by name
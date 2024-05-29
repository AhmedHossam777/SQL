-- Write your PostgreSQL query statement below
select W.id
from Weather as W
where W.temperature > (select temperature from Weather where (W.recordDate-recordDate=1))
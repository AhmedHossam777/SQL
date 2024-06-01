# Write your MySQL query statement below
select s.user_id,  round(avg(if(c.action="confirmed",1,0)),2) as confirmation_rate
from Confirmations as c
right join Signups as s on s.user_id = c.user_id
group by s.user_id

-- (select action from Confirmations where action='confirmed')
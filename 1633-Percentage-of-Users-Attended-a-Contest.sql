# Write your MySQL query statement below
select r.contest_id, round((count(r.user_id)/(select count(*) from users))*100,2) as percentage
from users as u 
join Register as r on r.user_id = u.user_id
group by r.contest_id
order by percentage desc, contest_id
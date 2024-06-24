with numbers as ( select num, count(num) as count
from MyNumbers
group by num)

select max(num) as num
from numbers
where count = 1 
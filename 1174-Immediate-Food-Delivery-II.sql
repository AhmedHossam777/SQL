-- Write your PostgreSQL query statement below
with abc as(
    select customer_id , min(order_date) as ord from delivery 
    group by customer_id )
select round(avg(case when a.ord = b.customer_pref_delivery_date then 1 else 0  end)*100 , 2)
as  immediate_percentage
from delivery b inner join abc a
on a.customer_id = b.customer_id and a.ord = b.order_date;
-- Write your PostgreSQL query statement below

with newTabel as (
    select count(DISTINCT p.product_key), c.customer_id
    from product as p
    join Customer as c on c.product_key = p.product_key
    group by (c.customer_id)
    order by c.customer_id
)

select customer_id
from newTabel
where count = (select count(product_key) from product)

-- -- select count(product_key) from product
-- (select max(count) from newTabel)
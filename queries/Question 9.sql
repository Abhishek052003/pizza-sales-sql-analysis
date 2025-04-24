-- 9.Group the orders by date and calculate the average number of pizzas ordered per day.

select avg(quantity) from
(select o.order_date, sum(od.quantity) as quantity
from orders o
join order_details od
on o.order_id=od.order_id
group by o.order_date) as ordered_quantity;
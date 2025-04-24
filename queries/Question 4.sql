-- 4.Identify the most common pizza size ordered.

select p.size, count(od.quantity) as Total_Time_Ordered
from pizzas p 
inner join order_details od 
on p.pizza_id=od.pizza_id
group by p.size
order by count(od.quantity) desc
limit 1;
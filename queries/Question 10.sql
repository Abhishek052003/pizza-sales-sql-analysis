-- 10.Determine the top 3 most ordered pizza types based on revenue.

select pt.name, sum(p.price*od.quantity) as Total_earning
from pizzas p
join pizza_types pt on p.pizza_type_id=pt.pizza_type_id
join order_details od on p.pizza_id=od.pizza_id
group by pt.name
order by total_earning desc
limit 3;
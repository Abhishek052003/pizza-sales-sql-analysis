-- Calculate the percentage contribution of each pizza type to total revenue.

select pt.category, round((sum(od.quantity*p.price)/817860.050)*100,2) as revenue
from pizzas p
join pizza_types pt on p.pizza_type_id=pt.pizza_type_id
join order_details od on p.pizza_id=od.pizza_id
group by pt.category
order by revenue;
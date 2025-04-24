-- 11.Analyze the cumulative revenue generated over time.

select order_date ,revenue, sum(revenue) over (order by order_date) as cum_revenue from
(select o.order_date, sum(od.quantity*p.price) as revenue
from order_details od 
join orders o on o.order_id=od.order_id
join pizzas p on p.pizza_id=od.pizza_id
group by o.order_date
order by revenue) as sales;
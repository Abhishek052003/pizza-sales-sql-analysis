-- 3.Identify the highest-priced pizza.

-- if want with name of pizza
SELECT 
    pt.name, p.price AS Highest_Price_Pizza
FROM
    pizza_types pt
        INNER JOIN
    pizzas p ON p.pizza_type_id = pt.pizza_type_id
ORDER BY p.price DESC
LIMIT 1;

-- if want only price
select max(price) from pizzas;


-- If you want to use aggregate function max()
SELECT 
    pt.name, max(p.price) AS Highest_Price_Pizza
FROM
    pizza_types pt
        INNER JOIN
    pizzas p ON p.pizza_type_id = pt.pizza_type_id
group by pt.name order by max(p.price) desc limit 1;
-- Identify the most common pizza size ordered.

select quantity, count(quantity)
from order_details group by quantity;


SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) as pizza_quantity
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY pizza_quantity DESC
LIMIT 2;
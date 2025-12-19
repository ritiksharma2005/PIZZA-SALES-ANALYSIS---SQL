-- Join relevant tables to find the category-wise distribution of pizzas-- 

select
pizza_types.category,sum(order_details.quantity)
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category
order by sum(order_details.quantity);

-- This question may have both the meening so here is the another pov of this questins

select pizza_types.category,count(pizza_types.name)
from pizza_types
group by category
order by count(name);




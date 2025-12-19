-- analyze the cumulative revenue generated over time.

SELECT 
  order_date,
  SUM(revenue) OVER (ORDER BY order_date) AS cumulative_revenue
FROM (
  SELECT 
    orders.order_date,
    ROUND(SUM(pizzas.price * order_details.quantity), 2) AS revenue
  FROM orders
  JOIN order_details ON orders.order_id = order_details.order_id
  JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id
  GROUP BY orders.order_date
) AS daily_revenue;

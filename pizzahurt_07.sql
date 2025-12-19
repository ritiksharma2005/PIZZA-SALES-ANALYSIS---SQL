-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS hours, COUNT(order_id) AS total_order
FROM
    orders
GROUP BY hours
ORDER BY total_order;
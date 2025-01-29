-- intermediate
 -- join the necessary table to find the total quantity of each pizza cztegory ordered
 
 SELECT 
    pizza_types.category,
    SUM(order_details.quantity) AS order_category
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY order_category DESC
LIMIT 1;
 
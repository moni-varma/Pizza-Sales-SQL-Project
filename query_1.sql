-- Retrive the total number of orders placed.

select count(order_id) as total_orders from orders;

-- calculate the total revenue generate from pizza sales.

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizza.pizza_id = order_details.pizza_id;

WITH ToppingCombinations AS (
    SELECT 
        t1.topping_name AS topping_1,
        t2.topping_name AS topping_2,
        t3.topping_name AS topping_3,
        t1.ingredient_cost + t2.ingredient_cost + t3.ingredient_cost AS total_cost
    FROM pizza_toppings t1
    JOIN pizza_toppings t2 ON t1.topping_name < t2.topping_name
    JOIN pizza_toppings t3 ON t2.topping_name < t3.topping_name
)
SELECT 
    CONCAT_WS(',', topping_1, topping_2, topping_3) AS pizza,
    total_cost
FROM ToppingCombinations
ORDER BY total_cost DESC, pizza;

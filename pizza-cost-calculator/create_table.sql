-- Create table
CREATE TABLE pizza_toppings (
    topping_name VARCHAR(255),
    ingredient_cost DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO pizza_toppings (topping_name, ingredient_cost) VALUES
('Pepperoni', 0.50),
('Sausage', 0.70),
('Chicken', 0.55),
('Extra Cheese', 0.40);

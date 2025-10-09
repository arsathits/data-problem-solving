-- Table creation
CREATE TABLE mis_inventory (
    item_id INT PRIMARY KEY,
    item_type TEXT,
    item_category TEXT,
    square_footage NUMERIC(10,2)
);

-- Insert sample data
INSERT INTO mis_inventory (item_id, item_type, item_category, square_footage) VALUES
(1374, 'prime_eligible', 'mini refrigerator', 68.00),
(4245, 'not_prime', 'standing lamp', 26.40),
(2452, 'prime_eligible', 'television', 85.00),
(3255, 'not_prime', 'side table', 22.60),
(1672, 'prime_eligible', 'laptop', 8.50);

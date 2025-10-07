-- Create table
CREATE TABLE user_purchases (
    user_id INT,
    date DATE,
    amount_spent FLOAT,
    day_name VARCHAR(15)
);

-- Insert sample data
INSERT INTO user_purchases (user_id, date, amount_spent, day_name) VALUES
(1047, '2023-01-01', 288, 'Sunday'),
(1099, '2023-01-04', 803, 'Wednesday'),
(1052, '2023-01-13', 889, 'Friday'),
(1052, '2023-01-13', 596, 'Friday'),
(1095, '2023-01-27', 424, 'Friday'),
(1019, '2023-02-03', 185, 'Friday'),
(1019, '2023-02-03', 995, 'Friday'),
(1023, '2023-02-24', 259, 'Friday');

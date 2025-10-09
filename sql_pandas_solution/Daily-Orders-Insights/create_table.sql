-- Create session table
CREATE TABLE doi_session (
    session_id INT PRIMARY KEY,
    user_id INT,
    session_date DATE
);

-- Create orders table
CREATE TABLE doi_orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_value INT,
    order_date DATE
);

-- Insert data into doi_orders
INSERT INTO doi_orders (order_id, user_id, order_value, order_date) VALUES
(1, 1, 152, '2024-01-01'),
(2, 2, 485, '2024-01-02'),
(3, 3, 398, '2024-01-05'),
(4, 3, 320, '2024-01-05'),
(5, 4, 156, '2024-01-03'),
(6, 4, 121, '2024-01-03'),
(7, 5, 238, '2024-01-04'),
(8, 5, 70, '2024-01-04'),
(9, 3, 152, '2024-01-05'),
(10, 5, 171, '2024-01-04');

-- Insert data into doi_session
INSERT INTO doi_session (session_id, user_id, session_date) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-05'),
(4, 3, '2024-01-05'),
(5, 4, '2024-01-03'),
(6, 4, '2024-01-03'),
(7, 5, '2024-01-04'),
(8, 5, '2024-01-04'),
(9, 3, '2024-01-05'),
(10, 5, '2024-01-04');
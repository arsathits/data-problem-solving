CREATE TABLE manufacture_product (
    product_id INT PRIMARY KEY,
    category VARCHAR(10),
    product_name VARCHAR(100)
);

CREATE TABLE manufacture_sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    revenue DOUBLE PRECISION
);

INSERT INTO manufacture_product (product_id, category, product_name)
VALUES
(1, 'A', 'Product1'),
(2, 'A', 'Product2'),
(3, 'A', 'Product3'),
(4, 'B', 'Product4'),
(5, 'B', 'Product5'),
(6, 'B', 'Product6'),
(7, 'C', 'Product7'),
(8, 'C', 'Product8'),
(9, 'C', 'Product9');

INSERT INTO manufacture_sales (sale_id, product_id, quantity, revenue)
VALUES
(1, 1, 10, 100.0),
(2, 2, 8, 120.0),
(3, 3, 12, 180.0),
(4, 4, 5, 50.0),
(5, 5, 3, 30.0),
(6, 6, 7, 70.0),
(7, 7, 15, 150.0),
(8, 8, 10, 100.0),
(9, 9, 8, 80.0);

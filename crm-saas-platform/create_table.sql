-- 1. Create tables

CREATE TABLE problem_2_crm_customers (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE problem_2_crm_orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER REFERENCES problem_2_crm_customers(customer_id),
    product_id INTEGER,
    order_date DATE
);

CREATE TABLE problem_2_crm_products (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- 2. Insert sample data

INSERT INTO problem_2_crm_customers (customer_id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'john.doe@email.com'),
(2, 'Jane', 'Smith', 'jane.smith@email.com');

INSERT INTO problem_2_crm_products (product_id, product_name, category) VALUES
(101, 'Product A', 'Category1'),
(102, 'Product B', 'Category2');

INSERT INTO problem_2_crm_orders (order_id, customer_id, product_id, order_date) VALUES
(1001, 1, 101, '2023-01-10'),
(1002, 2, 102, '2023-01-11');
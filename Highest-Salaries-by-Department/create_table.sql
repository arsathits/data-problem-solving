CREATE TABLE company_employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO company_employees (id, first_name, last_name, department, salary) VALUES
(1, 'Allen', 'Wang', 'Management', 200000),
(13, 'Katty', 'Bond', 'Management', 150000),
(19, 'George', 'Joe', 'Management', 100000),
(11, 'Richerd', 'Gear', 'Management', 250000),
(17, 'Mick', 'Berry', 'Sales', 220000),
(20, 'Sarrah', 'Bicky', 'Sales', 200000),
(21, 'Paul', 'Adams', 'Sales', 140000),
(22, 'John', 'Doe', 'Engineering', 180000),
(23, 'Mary', 'Smith', 'Engineering', 160000),
(24, 'Chris', 'Lee', 'Engineering', 150000),
(25, 'Emma', 'Brown', 'Engineering', 120000);

-- Table: sc_employee
CREATE TABLE sc_employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    manager_id INT
);

-- Insert sample data into sc_employee
INSERT INTO sc_employee (employee_id, name, salary, department_id, manager_id) VALUES
(1, 'Emma Thompson', 3800, 1, 6),
(2, 'Daniel Rodriguez', 2230, 1, 7),
(3, 'Olivia Smith', 7000, 1, 8),
(4, 'Ethan Brown', 6800, 1, 9),
(5, 'Sophia Martinez', 1750, 1, 11);



-- Table: sc_salary
CREATE TABLE sc_salary (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    amount DECIMAL(10,2),
    payment_date TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES sc_employee(employee_id)
);

-- Insert sample data into sc_salary
INSERT INTO sc_salary (salary_id, employee_id, amount, payment_date) VALUES
(1, 1, 3800, '2024-03-01 00:00:00'),
(2, 2, 2230, '2024-03-01 00:00:00'),
(3, 3, 7000, '2024-03-01 00:00:00'),
(4, 4, 6800, '2024-03-01 00:00:00'),
(5, 5, 1750, '2024-03-01 00:00:00');

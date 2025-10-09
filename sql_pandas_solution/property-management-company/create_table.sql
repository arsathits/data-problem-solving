CREATE TABLE problem_03_prop_properties (
    property_id SERIAL PRIMARY KEY,
    landlord_id INT NOT NULL,
    property_type VARCHAR(50),
    rent FLOAT,
    square_feet INT,
    city VARCHAR(50)
);
CREATE TABLE problem_03_prop_landlords (
    landlord_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15)
);
INSERT INTO problem_03_prop_properties (property_id, landlord_id, property_type, rent, square_feet, city)
VALUES
(1, 101, 'Apartment', 1500, 1000, 'Seattle'),
(2, 101, 'Condo', 1200, 800, 'Seattle'),
(3, 102, 'House', 2000, 1500, 'Bellevue'),
(4, 103, 'Apartment', 1800, 1200, 'Redmond'),
(5, 103, 'Condo', 1000, 700, 'Redmond');
INSERT INTO problem_03_prop_landlords (landlord_id, first_name, last_name, email, phone)
VALUES
(101, 'John', 'Smith', 'john.smith@example.com', '555-123-4567'),
(102, 'Jane', 'Doe', 'jane.doe@example.com', '555-234-5678'),
(103, 'Bob', 'Johnson', 'bob.johnson@example.com', '555-345-6789'),
(104, 'Mary', 'Williams', 'mary.williams@example.com', '555-456-7890');

-- Create table
CREATE TABLE SalesData (
    StoreID VARCHAR(10),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    SoldUnits INT,
    Description TEXT
);

-- Insert sample data
INSERT INTO SalesData (StoreID, ProductName, Category, SoldUnits, Description) VALUES
('S101', 'Biscuits', 'Food', 120, 'Tasty Biscuits [10% off]'),
('S102', 'Shampoo', 'Hygiene', 85, 'Smoothens Hair [5% off]'),
('S103', 'Banana', 'Food', 150, 'Fresh Bananas'),
('S101', 'Toothpaste', 'Hygiene', 300, 'Protects Teeth'),
('S102', 'Shirt', 'Clothes', 65, 'Cotton Shirts [20% off]');

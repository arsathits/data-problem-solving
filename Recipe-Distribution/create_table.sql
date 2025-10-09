-- Create table
CREATE TABLE cookbook_recipes (
    page_number INT,
    title VARCHAR(255)
);

-- Insert sample data
INSERT INTO cookbook_recipes (page_number, title) VALUES
(1, 'Scrambled eggs'),
(2, 'Fondue'),
(3, 'Sandwich'),
(4, 'Tomato soup'),
(6, 'Liver'),
(11, 'Fried duck'),
(12, 'Boiled duck'),
(15, 'Baked chicken');

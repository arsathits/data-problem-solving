-- Table creation
CREATE TABLE df_math_expr (
    id INTEGER PRIMARY KEY,
    expression TEXT
);

-- Insert sample data
INSERT INTO df_math_expr (id, expression) VALUES
(1, '5+3'),
(2, 'hello'),
(3, '6/3'),
(4, 'world'),
(5, '2*3+1');

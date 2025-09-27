-- Table creation
CREATE TABLE ga_user_transactions (
    transaction_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    spend NUMERIC(12,2),
    transaction_date DATE
);

-- Insert sample data
INSERT INTO ga_user_transactions (transaction_id, product_id, spend, transaction_date) VALUES
(1341, 123424, 1500.60, '2019-12-31'),
(1423, 123424, 1000.20, '2020-12-31'),
(1623, 123424, 1246.44, '2021-12-31'),
(1322, 123424, 2145.32, '2022-12-31');

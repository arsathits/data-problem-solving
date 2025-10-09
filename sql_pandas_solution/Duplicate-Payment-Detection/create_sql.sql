-- Table creation
CREATE TABLE dpd_duplicate (
    transaction_id INTEGER PRIMARY KEY,
    merchant_id INTEGER,
    credit_card_id INTEGER,
    amount INTEGER,
    transaction_timestamp TIMESTAMP
);

-- Insert sample data
INSERT INTO dpd_duplicate (transaction_id, merchant_id, credit_card_id, amount, transaction_timestamp) VALUES
(1, 101, 1, 100, '2022-09-25 12:00:00'),
(2, 101, 1, 100, '2022-09-25 12:08:00'),
(3, 101, 1, 100, '2022-09-25 12:28:00'),
(4, 102, 2, 300, '2022-09-25 12:00:00'),
(6, 102, 2, 400, '2022-09-25 14:00:00');

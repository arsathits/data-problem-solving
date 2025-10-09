CREATE TABLE monthly_purchases (
    id INT PRIMARY KEY,
    created_at TIMESTAMP,
    value INT,
    purchase_id INT
);

INSERT INTO monthly_purchases (id, created_at, value, purchase_id) VALUES
(1, '2019-01-01 00:00:00', 172692, 43),
(2, '2019-01-05 00:00:00', 177194, 36),
(3, '2019-02-02 00:00:00', 140032, 25),
(4, '2019-03-02 00:00:00', 157548, 19);

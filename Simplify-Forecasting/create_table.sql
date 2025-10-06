CREATE TABLE ride_requests (
    request_id INT PRIMARY KEY,
    request_date DATE,
    request_status VARCHAR(20),
    distance_to_travel NUMERIC(10,2),
    monetary_cost NUMERIC(10,2),
    driver_to_client_distance NUMERIC(10,2)
);

INSERT INTO ride_requests (request_id, request_date, request_status, distance_to_travel, monetary_cost, driver_to_client_distance) VALUES
(1, '2020-01-09', 'success', 70.59, 6.56, 14.36),
(2, '2020-01-24', 'success', 93.36, 22.68, 19.90),
(3, '2020-02-08', 'fail', 51.24, 11.39, 21.32),
(4, '2020-02-23', 'success', 61.58, 8.04, 44.26),
(5, '2020-03-09', 'success', 25.04, 7.19, 1.74);

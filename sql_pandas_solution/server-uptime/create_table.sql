-- Create table
CREATE TABLE su_server_utilization (
    server_id INT,
    status_tim DATE,
    session_status VARCHAR(10)
);

-- Insert sample data
INSERT INTO su_server_utilization (server_id, status_tim, session_status) VALUES
(1, '2022-08-02', 'start'),
(1, '2022-08-04', 'stop'),
(2, '2022-08-17', 'start'),
(2, '2022-08-24', 'stop');

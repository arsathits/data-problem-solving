-- Table creation
CREATE TABLE ar_user_actions (
    user_id INTEGER,
    event_id INTEGER,
    event_type TEXT,
    event_date TIMESTAMP
);

-- Insert sample data
INSERT INTO ar_user_actions (user_id, event_id, event_type, event_date) VALUES
(445, 7765, 'sign-in', '2022-06-30 12:00:00'),
(742, 6458, 'sign-in', '2022-06-03 12:00:00'),
(445, 3634, 'like',    '2022-06-05 12:00:00'),
(742, 1374, 'comment', '2022-06-05 12:00:00'),
(648, 3124, 'like',    '2022-06-18 12:00:00'),
(742, 4521, 'like',    '2022-07-01 12:00:00'),
(445, 7563, 'comment', '2022-07-02 12:00:00'),
(742, 8541, 'sign-in', '2022-07-05 12:00:00'),
(648, 9512, 'comment', '2022-07-15 12:00:00');

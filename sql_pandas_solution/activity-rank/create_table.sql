CREATE SCHEMA IF NOT EXISTS "activity_rank";

CREATE TABLE IF NOT EXISTS "activity_rank".google_gmail_emails (
    id INT PRIMARY KEY,
    from_user VARCHAR(50),
    to_user VARCHAR(50),
    day INT
);


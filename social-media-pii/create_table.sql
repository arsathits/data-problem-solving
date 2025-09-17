-- Create table
CREATE TABLE problem_04_social_media_pii (
    user_id INTEGER PRIMARY KEY,
    email VARCHAR(255),
    phone BIGINT
);

-- Insert sample data
INSERT INTO problem_04_social_media_pii (user_id, email, phone) VALUES
(1, 'alice@example.com', 5551234567),
(2, 'bob@domain.net', 5559876543),
(3, 'carol@email.org', 5551239876),
(4, 'dave@site.com', 5554567890),
(5, 'eve@platform.io', 5559871234);

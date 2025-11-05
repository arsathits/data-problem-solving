CREATE SCHEMA popularity_percentage;

CREATE TABLE popularity_percentage.facebook_friends (
    user1 INT,
    user2 INT
);
INSERT INTO popularity_percentage.facebook_friends (user1, user2) VALUES
(2, 1),
(1, 3),
(4, 1),
(1, 5),
(1, 6),
(2, 6),
(7, 2),
(8, 3),
(3, 9);

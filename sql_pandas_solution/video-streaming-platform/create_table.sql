DROP TABLE IF EXISTS problem_01_videos;

CREATE TABLE problem_01_videos (
    video_id INTEGER PRIMARY KEY,
    title TEXT,
    genre TEXT,
    release_year INTEGER,
    duration INTEGER,
    view_count INTEGER
);

INSERT INTO problem_01_videos VALUES
(1, 'Amazing Adventure', 'Action', 2020, 120, 2500000),
(2, 'Sci-fi World', 'Sci-fi', 2018, 140, 800000),
(3, 'Mysterious Island', 'Drama', 2022, 115, 1500000),
(4, 'Uncharted Realms', 'Action', 2019, 134, 3200000),
(5, 'Journey to the Stars', 'Sci-fi', 2021, 128, 1100000);

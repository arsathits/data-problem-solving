-- Create schema
CREATE SCHEMA IF NOT EXISTS "reviewed_flags_top_videos";

-- Set default path so we don't have to prefix schema name each time
SET search_path TO "reviewed_flags_top_videos";

-- Drop tables if they already exist
DROP TABLE IF EXISTS user_flags;
DROP TABLE IF EXISTS flag_review;

-- Create flag_review table
CREATE TABLE flag_review (
    flag_id TEXT PRIMARY KEY,
    reviewed_by_yt BOOLEAN,
    reviewed_date DATE,
    reviewed_outcome TEXT
);

-- Create user_flags table
CREATE TABLE user_flags (
    user_firstname TEXT,
    user_lastname TEXT,
    video_id TEXT,
    flag_id TEXT
);

-- Insert into flag_review
INSERT INTO flag_review (flag_id, reviewed_by_yt, reviewed_date, reviewed_outcome) VALUES
('0cazx3', FALSE, NULL, NULL),
('1cn76u', TRUE, '2022-03-15', 'REMOVED'),
('1i43zk', TRUE, '2022-03-15', 'REMOVED'),
('1n0vef', TRUE, '2022-03-15', 'REMOVED'),
('1sv6ib', TRUE, '2022-03-15', 'APPROVED'),
('20xekb', TRUE, '2022-03-17', 'REMOVED'),
('4cvwuv', TRUE, '2022-03-15', 'APPROVED'),
('4l1tk7', FALSE, NULL, NULL),
('4sd6dv', TRUE, '2022-03-14', 'REMOVED'),
('6jjkvn', TRUE, '2022-03-16', 'APPROVED'),
('7ks264', TRUE, '2022-03-15', 'APPROVED'),
('8946nx', FALSE, NULL, NULL),
('8wwg0l', FALSE, NULL, NULL),
('arydfd', TRUE, '2022-03-15', 'APPROVED'),
('bl40qw', TRUE, '2022-03-16', 'REMOVED'),
('ehn1pt', TRUE, '2022-03-18', 'APPROVED'),
('hucyzx', FALSE, NULL, NULL),
('i2l3oo', TRUE, '2022-03-17', 'REMOVED'),
('i6336w', FALSE, NULL, NULL),
('iey5vi', FALSE, NULL, NULL),
('kc41jd', TRUE, '2022-03-14', 'REMOVED'),
('kktiwe', TRUE, '2022-03-14', 'APPROVED'),
('nkjgku', FALSE, NULL, NULL),
('ov5gd8', TRUE, '2022-03-17', 'APPROVED'),
('qa16ua', FALSE, NULL, NULL),
('xciyse', TRUE, '2022-03-16', 'APPROVED'),
('xvhk6d', TRUE, '2022-03-17', 'APPROVED');

-- Insert into user_flags
INSERT INTO user_flags (user_firstname, user_lastname, video_id, flag_id) VALUES
('Richard', 'Hasson', 'y6120QOlsfU', '0cazx3'),
('Mark', 'May', 'Ct6BUPvE2sM', '1cn76u'),
('Gina', 'Korman', 'dQw4w9WgXcQ', '1i43zk'),
('Mark', 'May', 'Ct6BUPvE2sM', '1n0vef'),
('Mark', 'May', 'jNQXAC9IVRw', '1sv6ib'),
('Gina', 'Korman', 'dQw4w9WgXcQ', '20xekb'),
('Mark', 'May', '5qap5aO4i9A', '4cvwuv'),
('Daniel', 'Bell', '5qap5aO4i9A', '4sd6dv'),
('Richard', 'Hasson', 'y6120QOlsfU', '6jjkvn'),
('Pauline', 'Wilks', 'jNQXAC9IVRw', '7ks264'),
('Courtney', NULL, 'dQw4w9WgXcQ', NULL),
('Helen', 'Hearn', 'dQw4w9WgXcQ', '8946nx'),
('Mark', 'Johnson', 'y6120QOlsfU', '8wwg0l'),
('Richard', 'Hasson', 'dQw4w9WgXcQ', 'arydfd'),
('Gina', 'Korman', NULL, NULL),
('Mark', 'Johnson', 'y6120QOlsfU', 'bl40qw'),
('Richard', 'Hasson', 'dQw4w9WgXcQ', 'ehn1pt'),
('Lopez', NULL, 'dQw4w9WgXcQ', 'hucyzx'),
('Greg', NULL, '5qap5aO4i9A', NULL),
('Pauline', 'Wilks', 'jNQXAC9IVRw', 'i2l3oo'),
('Richard', 'Hasson', 'jNQXAC9IVRw', 'i6336w'),
('Johnson', NULL, 'y6120QOlsfU', 'iey5vi'),
('William', 'Kwan', 'y6120QOlsfU', 'kktiwe'),
(NULL, NULL, 'Ct6BUPvE2sM', NULL),
('Loretta', 'Crutcher', 'y6120QOlsfU', 'nkjgku'),
('Pauline', 'Wilks', 'jNQXAC9IVRw', 'ov5gd8'),
('Mary', 'Thompson', 'Ct6BUPvE2sM', 'qa16ua'),
('Daniel', 'Bell', '5qap5aO4i9A', 'xciyse'),
('Evelyn', 'Johnson', 'dQw4w9WgXcQ', 'xvhk6d');

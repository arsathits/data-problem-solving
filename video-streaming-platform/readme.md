📺 Problem 1: Video Streaming Platform

You're working as a Data Engineer at a video streaming platform. Your team wants to highlight popular and recently released videos on the homepage to increase user engagement.

✅ Task

Write a function that:

Accepts a DataFrame video_stream_df as input.

Returns a filtered DataFrame that includes only videos that:

Have more than 1,000,000 views

Were released in the last 6 years (relative to the current year)

Reorders the columns to:

duration, genre, release_year, title, video_id, view_count


Sorts the resulting data by the duration column.

📥 Input DataFrame: video_stream_df
Column Name	Data Type
video_id	Integer
title	String
genre	String
release_year	Integer
duration	Integer (minutes)
view_count	Integer
📤 Expected Output (Sample)
duration	genre	release_year	title	video_id	view_count
115	Drama	2022	Mysterious Island	3	1,500,000
120	Action	2020	Amazing Adventure	1	2,500,000
128	Sci-fi	2021	Journey to the Stars	5	1,100,000
134	Action	2019	Uncharted Realms	4	3,200,000
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
